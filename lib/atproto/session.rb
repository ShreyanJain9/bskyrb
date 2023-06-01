# typed: false

require "atproto/requests"

module ATProto
  class Credentials
    attr_reader :username, :pw, :pds

    def initialize(username, pw, pds = "https://bsky.social")
      @username = username
      @pw = pw
      @pds = pds # credentials are pds-specific
    end
  end

  class Session
    include RequestUtils

    attr_reader :credentials, :pds, :access_token, :refresh_token, :did

    def initialize(credentials, should_open = true)
      @credentials = credentials
      @pds = credentials.pds
      open! if should_open
    end

    def open!
      response = HTTParty.post(
        URI(create_session_uri(pds)),
        body: {identifier: credentials.username, password: credentials.pw}.to_json,
        headers: default_headers
      )

      raise UnauthorizedError if response.code == 401

      @access_token = response["accessJwt"]
      @refresh_token = response["refreshJwt"]
      @did = response["did"]
    end

    def refresh!
      response = HTTParty.post(
        URI(refresh_session_uri(pds)),
        headers: refresh_token_headers(self)
      )
      raise UnauthorizedError if response.code == 401
      @access_token = response["accessJwt"]
      @refresh_token = response["refreshJwt"]
    end

    def get_session
      HTTParty.get(
        URI(get_session_uri(pds)),
        headers: default_authenticated_headers(self)
      )
    end

    def delete!
      response = HTTParty.post(
        URI(delete_session_uri(pds)),
        headers: refresh_token_headers(self)
      )
      if response.code == 200
        {success: true}
      else
        raise UnauthorizedError
      end
    end
  end
end
