# typed: true

require "bskyrb/post_tools"
require "bskyrb/defs/profile"

module Bskyrb
  class Client
    include ATProto::RequestUtils
    include PostTools
    extend T::Sig
    attr_reader :session

    sig { params(session: ATProto::Session).void }

    def initialize(session)
      @session = T.let(session, ATProto::Session)
      @pds = session.pds
    end

    sig { params(json_hash: Hash).returns(ATProto::Record) }

    def create_record(json_hash)
      ATProto::Record.create(json_hash, @session)
    end

    sig { params(text: String, reply_to: T.nilable(String)).returns(ATProto::Record) }

    def create_post(text, reply_to = nil)
      create_record(PostRecord.new(text, reply: reply_to, pds: @pds).to_json_hash)
    end

    def upload_blob(blob_path, content_type)
      # only images
      image_bytes = File.binread(blob_path)
      HTTParty.post(
        upload_blob_uri(session.pds),
        body: image_bytes,
        headers: default_authenticated_headers(session).merge("Content-Type" => content_type),
      )
    end

    sig { params(username: String, type: String).returns(ATProto::Record) }

    def profile_action(username, type)
      create_record({
        "subject" => resolve_handle(username, session.pds),
        "createdAt" => DateTime.now.iso8601(3),
        "$type" => type,
      })
    end

    def follow(handle)
      profile_action(handle, "app.bsky.feed.follow")
    end

    sig { params(post: ATProto::Record, action_type: String).returns(ATProto::Record) }

    def post_action(post, action_type)
      create_record({
        subject: post.strongref.to_json,
        createdAt: DateTime.now.iso8601(3),
        "$type": action_type,
      })
    end

    sig { params(post_uri: String).returns(ATProto::Record) }

    def like(post_uri)
      post_action(ATProto::Record.from_uri(at_uri(post_uri, session.pds), session.pds), "app.bsky.feed.like")
    end

    sig { params(post_uri: String).returns(ATProto::Record) }

    def repost(post_uri)
      post_action(ATProto::Record.from_uri(at_uri(post_uri, session.pds), session.pds), "app.bsky.feed.repost")
    end

    sig { params(handle: String).returns(Integer) }

    def mute_actor(handle)
      session.xrpc.post.app_bsky_graph_muteActor(actor: handle)
    end

    def get_likes(post_uri, cursor: nil)
      T.must(get_paginated_data(
        @session,
        "app_bsky_feed_getLikes",
        key: "likes",
        params: {
          uri: at_uri(post_uri),
        },
        cursor: cursor,
      ) {
        |json_hash|
        Profile.new(json_hash["actor"], pds: @pds)
      })
    end
  end
end
