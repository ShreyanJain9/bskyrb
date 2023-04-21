module Bskyrb
  class SkylineManager
    include RequestUtils
    attr_reader :session

    def initialize(session)
      @session = session
    end

    def get_post_by_url(url)
      # e.g. "https://staging.bsky.app/profile/naia.bsky.social/post/3jszsrnruws27"
      # regex by chatgpt:
      link = at_post_link(session.pds, url)
      HTTParty.get(
        get_post_thread_uri(session.pds, link),
        headers: default_authenticated_headers(session)
      )
    end

    def upload_blob(blob_path, content_type)
      # only images?
      image_bytes = File.binread(blob_path)
      HTTParty.post(
        upload_blob_uri(session.pds),
        body: image_bytes,
        headers: default_authenticated_headers(session)
      )
    end

    def create_record(data_hash)
      HTTParty.post(
        create_record_uri(session.pds),
        body: data_hash.to_json,
        headers: default_authenticated_headers(session)
      )
    end

    def create_post(text)
      timestamp = DateTime.now.iso8601(3)
      data = {
        collection: "app.bsky.feed.post",
        "$type": "app.bsky.feed.post",
        repo: session.did,
        record: {
          "$type": "app.bsky.feed.post",
          createdAt: timestamp,
          text: text
        }
      }
      create_record(data)
    end

    def follow(username)
      create_record(
        {
          "collection" => "app.bsky.graph.follow",
          "repo" => session.did,
          "record" => {
            "subject" => resolve_handle(session.pds, username)["did"],
            "createdAt" => DateTime.now.iso8601(3),
            "$type" => "app.bsky.graph.follow"
          }
        }
      )
    end

    def get_latest_post(username)
      get_latest_n_posts(username, 1)
    end

    def get_latest_n_posts(username, n)
      HTTParty.get(
        get_author_feed_uri(session.pds, username, n),
        headers: default_authenticated_headers(session)
      )
    end

    def get_skyline(n)
      HTTParty.get(
        get_timeline_uri(session.pds, n),
        headers: default_authenticated_headers(session)
      )
    end
  end
end
