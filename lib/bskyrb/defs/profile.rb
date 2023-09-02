# typed: true
module Bskyrb
  class Profile
    class << self
      extend T::Sig
      include ATProto::RequestUtils
      sig { params(handle: String, pds: String, session: (T.nilable ATProto::Session)).returns(Bskyrb::Profile) }

      def from_handle(handle, pds: "https://bsky.social", session: nil)
        unless handle.start_with?("did:")
          handle = T.let(handle, String)
        else
          handle = T.let(
            ATProto::Repo.new(handle, pds).describe_repo["handle"],
            String
          )
        end
        if session.nil?
          (record = (ATProto::Record.from_uri (at_uri "at://#{handle}/app.bsky.actor.profile/self", pds)))
          json = record.content
          Profile.new({
            "handle" => handle,
            "did" => resolve_handle(handle, pds),
            "displayName" => json["displayName"],
            "description" => json["description"],
          }, pds: pds)
        else
          json = session.xrpc.get.app_bsky_actor_profile(handle)
          Profile.new({
            "handle" => handle,
            "did" => json["did"],
            "displayName" => json["displayName"],
            "description" => json["description"],
          }, pds: pds)
        end
      end
    end

    extend T::Sig
    include ATProto::RequestUtils
    attr_reader :handle, :did, :display_name, :description

    def initialize(json_hash, pds: "https://bsky.social")
      @handle = T.let(json_hash["handle"], String)
      @did = T.let(json_hash["did"], String)
      @pds = T.let(pds, String)
      @display_name = T.let(json_hash["displayName"], T.nilable(String))
      @description = T.let(json_hash["description"], T.nilable(String))
    end

    dynamic_attr_reader(:repo) { ATProto::Repo.new(@handle, @pds) }
    dynamic_attr_reader(:record) { ATProto::Record.from_uri(at_uri("at://#{@handle}/app.bsky.actor.profile/self", @pds), @pds) }

    sig { params(session: ATProto::Session, cursor: T.nilable(String)).returns((T::Array[T.nilable(Bskyrb::Profile)])) }

    def follows(session:, cursor: nil)
      T.must(get_paginated_data(
        session,
        "app_bsky_graph_getFollows",
        key: "follows",
        params: {
          actor: resolve_handle(@handle, @pds),
        },
        cursor: cursor,
      ) { |json_hash|
        Profile.new(json_hash, pds: @pds)
      })
    end

    sig { params(session: ATProto::Session, cursor: T.nilable(String)).returns((T::Array[T.nilable(Bskyrb::Profile)])) }

    def followers(session:, cursor: nil)
      T.must(get_paginated_data(
        session,
        "app_bsky_graph_getFollowers",
        key: "followers",
        params: {
          actor: resolve_handle(@handle, @pds),
        },
        cursor: cursor,
      ) { |json_hash|
        Profile.new(json_hash, pds: @pds)
      })
    end
  end
end
