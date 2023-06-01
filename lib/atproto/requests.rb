module ATProto
  class Error < StandardError; end

  class HTTPError < Error; end

  class UnauthorizedError < HTTPError; end

  module RequestUtils # Goal is to replace with pure XRPC eventually
    def resolve_handle(pds, username)
      XRPC.request(pds, "com.atproto.identity.resolveHandle", handle: username)
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

    def create_session_uri(pds)
      "#{pds}/xrpc/com.atproto.server.createSession"
    end

    def delete_session_uri(pds)
      "#{pds}/xrpc/com.atproto.server.deleteSession"
    end

    def refresh_session_uri(pds)
      "#{pds}/xrpc/com.atproto.server.refreshSession"
    end

    def get_session_uri(pds)
      "#{pds}/xrpc/com.atproto.server.getSession"
    end

    def create_record_uri(pds)
      "#{pds}/xrpc/com.atproto.repo.createRecord"
    end

    def delete_record_uri(pds)
      "#{pds}/xrpc/com.atproto.repo.deleteRecord"
    end

    def mute_actor_uri(pds)
      "#{pds}/xrpc/app.bsky.graph.muteActor"
    end

    def upload_blob_uri(pds)
      "#{pds}/xrpc/com.atproto.repo.uploadBlob"
    end

    def get_post_thread_uri(pds, query)
      "#{pds}/xrpc/app.bsky.feed.getPostThread#{query_obj_to_query_params(query)}"
    end

    def default_authenticated_headers(session)
      default_headers.merge({
        Authorization: "Bearer #{session.access_token}"
      })
    end

    def refresh_token_headers(session)
      default_headers.merge({
        Authorization: "Bearer #{session.refresh_token}"
      })
    end

    def at_post_link(pds, url)
      url = url.to_s

      # Check if the URL is already in AT format
      if url.start_with?("at://")
        # Validate the username and post ID in the URL
        parts = url.split("/")
        if parts.length == 5 && parts[3] == "app.bsky.feed.post"
          username = parts[2]
          post_id = parts[4]
          if post_id
            return url
          end
        end

        # If the URL is not valid, raise an error
        raise "The provided URL #{url} is not a valid AT URL"
      end

      # Validate the format of the regular URL and extract the username and post ID
      regex = /https:\/\/[a-zA-Z0-9.-]+\/profile\/[a-zA-Z0-9.-]+\/post\/[a-zA-Z0-9.-]+/
      raise "The provided URL #{url} does not match the expected schema" unless regex.match?(url)
      username = url.split("/")[-3]
      post_id = url.split("/")[-1]

      # Validate the username and post ID in the AT URL
      did = resolve_handle(pds, username)["did"]

      # Construct the AT URL
      "at://#{did}/app.bsky.feed.post/#{post_id}"
    end
  end
end
