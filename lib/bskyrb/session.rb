require "uri"
require "httparty"

module Bskyrb
  module RequestUtils
    def resolve_handle(pds, username)
      HTTParty.get(
        "#{pds}/xrpc/com.atproto.identity.resolveHandle?handle=#{username}"
      )
    end

    def query_obj_to_query_params(q)
      out = "?"
      q.to_h.each do |key, value|
        out += "#{key}=#{value}&" unless value.nil? || (value.class.method_defined?(:empty?) && value.empty?)
      end
      out.slice(0...-1)
    end

    def default_headers
      {"Content-Type" => "application/json"}
    end

    def create_record_uri(pds)
      "#{pds}/xrpc/com.atproto.repo.createRecord"
    end

    def delete_record_uri(pds)
      "#{pds}/xrpc/com.atproto.repo.deleteRecord"
    end

    def upload_blob_uri(pds)
      "#{pds}/xrpc/com.atproto.repo.uploadBlob"
    end

    def get_post_thread_uri(pds, query)
      "#{pds}/xrpc/app.bsky.feed.getPostThread#{query_obj_to_query_params(query)}"
    end

    def get_author_feed_uri(pds, query)
      "#{pds}/xrpc/app.bsky.feed.getAuthorFeed#{query_obj_to_query_params(query)}"
    end

    def get_timeline_uri(pds, query)
      "#{pds}/xrpc/app.bsky.feed.getTimeline#{query_obj_to_query_params(query)}"
    end

    def get_popular_uri(pds, query)
      "#{pds}/xrpc/app.bsky.unspecced.getPopular#{query_obj_to_query_params(query)}"
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
      "at://#{did}/app.bsky.feed.post/#{post_id}"
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

      raise UnauthorizedError if response.code == 401

      @access_token = response["accessJwt"]
      @refresh_token = response["refreshJwt"]
      @did = response["did"]
    end
  end
end
