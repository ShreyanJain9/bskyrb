# typed: true
# frozen_string_literal: true

require "test_helper"

module Bskyrb
  class SessionTest < Minitest::Test
    def test_create_session_with_valid_credentials_returns_an_open_session
      stub_request(:post, "https://bsky.social/xrpc/com.atproto.server.createSession").to_return(
        status: 200,
        headers: { "Content-Type" => "application/json" },
        body: { "accessJwt" => "ACCESS_JWT", "refreshJwt" => "REFRESH_JWT", "did" => "DID" }.to_json,
      )

      credentials = ATProto::Credentials.new(ENV["BSKY_USERNAME"], ENV["BSKY_PASSWORD"])

      session = ATProto::Session.new(credentials)

      assert_equal "ACCESS_JWT", session.access_token

      assert_equal "REFRESH_JWT", session.refresh_token

      assert_equal "DID", session.did
    end

    def test_create_session_with_invalid_credentials_raises_unauthorized_error
      stub_request(:post, "https://bsky.social/xrpc/com.atproto.server.createSession").to_return(status: 401)

      credentials = ATProto::Credentials.new("invalid_username", "invalid_password", "https://bsky.social")

      assert_raises(Bskyrb::UnauthorizedError) do
        session = ATProto::Session.new(credentials)
      end
    end
  end
end
