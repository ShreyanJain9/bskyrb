require "uri"
require "httparty"

module Bskyrb
  module RequestUtils
    def resolve_handle(pds, username)
      HTTParty.get(
        URI("#{pds}/xrpc/com.atproto.identity.resolveHandle?handle=#{username}")
      )
    end

    def default_headers
      {"Content-Type" => "application/json"}
    end

    def create_record_uri(pds)
      URI("#{pds}/xrpc/com.atproto.repo.createRecord")
    end

    def upload_blob_uri(pds)
      URI("#{pds}/xrpc/com.atproto.repo.uploadBlob")
    end

    def get_post_thread_uri(pds, at_post_link)
      URI("#{pds}/xrpc/app.bsky.feed.getPostThread?uri=#{at_post_link}")
    end

    def get_author_feed_uri(pds, username, limit)
      URI("#{pds}/xrpc/app.bsky.feed.getAuthorFeed?actor=#{username}&limit=#{limit}")
    end

    def get_timeline_uri(pds, limit)
      URI("#{pds}/xrpc/app.bsky.feed.getTimeline?limit=#{limit}")
    end

    def default_authenticated_headers(session)
      default_headers.merge({
        Authorization: "Bearer #{session.access_token}"
      })
    end

    def at_post_link(pds, url)
      # e.g. "https://staging.bsky.app/profile/naia.bsky.social/post/3jszsrnruws27"
      url = url.to_s
      # regex by chatgpt:
      raise "The provided URL #{url} does not match the expected schema" unless /https:\/\/[a-zA-Z0-9.-]+\/profile\/[a-zA-Z0-9.-]+\/post\/[a-zA-Z0-9.-]+/.match?(url)
      username = url.split("/")[-3]
      did = resolve_handle(pds, username)["did"]
      post_id = url.split("/")[-1]
      URI("at://#{did}/app.bsky.feed.post/#{post_id}")
    end
  end

  class Credentials
    attr_reader :username, :pw

    def initialize(username, pw)
      @username = username
      @pw = pw
    end
  end

  class Session
    include RequestUtils

    attr_reader :credentials, :pds, :access_token, :refresh_token, :did

    def initialize(credentials, pds, should_open = true)
      @credentials = credentials
      @pds = pds
      open! if should_open
    end

    def open!
      uri = URI("#{pds}/xrpc/com.atproto.server.createSession")
      response = HTTParty.post(
        uri,
        body: {identifier: credentials.username, password: credentials.pw}.to_json,
        headers: default_headers
      )
      @access_token = response["accessJwt"]
      @refresh_token = response["refreshJwt"]
      @did = response["did"]
    end
  end
end