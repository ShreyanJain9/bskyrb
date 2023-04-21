module Bskyrb
  class SkylineManager
    include RequestUtils
    attr_reader :session

    def initialize(session)
      @session = session
    end

    def resolve_handle(username)
      headers = default_authenticated_headers(session)
      response = HTTParty.get(
        URI("#{session.pds}/xrpc/com.atproto.identity.resolveHandle?handle=#{username}")
      )
      response
    end
  end
end
