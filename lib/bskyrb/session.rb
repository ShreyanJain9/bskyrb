require "uri"
require "httparty"

module Bskyrb
  module RequestUtils
    def default_headers
      { "Content-Type" => "application/json" }
    end

    def create_record_uri(pds)
      URI("#{pds}/xrpc/com.atproto.repo.createRecord")
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

    attr_reader :credentials, :pds, :access_token, :refresh_token

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
