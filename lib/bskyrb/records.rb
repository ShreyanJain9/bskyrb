module Bskyrb
  class RecordManager
    include RequestUtils
    attr_reader :session

    def initialize(session)
      @session = session
    end

    def get_post_by_url(url, depth = 10)
      # e.g. "https://staging.bsky.app/profile/naia.bsky.social/post/3jszsrnruws27"
      # regex by chatgpt:
      query = Bskyrb::AppBskyFeedGetpostthread::GetPostThread::Input.new.tap do |q|
        q.uri = at_post_link(session.pds, url)
        q.depth = depth
      end
      res = HTTParty.get(
        get_post_thread_uri(session.pds, query),
        headers: default_authenticated_headers(session)
      )
      Bskyrb::AppBskyFeedDefs::PostView.from_hash res["thread"]["post"]
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

    def create_record(input)
      unless input.is_a?(Hash) || input.class.name.include?("Input")
        raise "`create_record` takes an Input class or a hash"
      end
      HTTParty.post(
        create_record_uri(session.pds),
        body: input.to_h.compact.to_json,
        headers: default_authenticated_headers(session)
      )
    end

    def detect_facets(json_hash) # TODO, DOES NOT WORK YET
      # For some reason this always fails at finding text records and I have no idea why
      # Detect domain names that have been @mentioned in the text
      matches = json_hash["record"]["text"].scan(/@([^\s.]+\.[^\s]+)/)

      # Create a facets array to hold the resolved handles
      facets = []

      # Loop through the matches and resolve the handles
      matches.each do |match|
        handle = match[0]
        resolved_handle = resolve_handle(session.pds, handle)
        byte_start = json_hash["record"]["text"].index("@" + handle)
        byte_end = byte_start + handle.length
        facet = {
          "$type": "app.bsky.richtext.facet",
          features: [
            {
              "$type": "app.bsky.richtext.facet#mention",
              did: resolved_handle
            }
          ],
          index: {
            byteStart: byte_start,
            byteEnd: byte_end
          }
        }
        facets.push(facet)
      end

      # Append the facets to the JSON hash
      json_hash["record"]["facets"] = facets

      # Convert the JSON hash back to a string
      json_string_with_facets = JSON.generate(json_hash)

      "Doesn't work yet"
    end

    def create_post(text)
      input = Bskyrb::ComAtprotoRepoCreaterecord::CreateRecord::Input.from_hash({
        "collection" => "app.bsky.feed.post",
        "$type" => "app.bsky.feed.post",
        "repo" => session.did,
        "record" => {
          "$type" => "app.bsky.feed.post",
          "createdAt" => DateTime.now.iso8601(3),
          "text" => text
        }
      })
      create_record(input)
    end

    def follow(username)
      input = Bskyrb::ComAtprotoRepoCreaterecord::CreateRecord::Input.from_hash({
        "collection" => "app.bsky.graph.follow",
        "repo" => session.did,
        "record" => {
          "subject" => resolve_handle(session.pds, username)["did"],
          "createdAt" => DateTime.now.iso8601(3),
          "$type" => "app.bsky.graph.follow"
        }
      })
      create_record(input)
    end

    def get_latest_post(username)
      feed = get_latest_n_posts(username, 1)
      feed.feed.first
    end

    def get_latest_n_posts(username, n)
      query = Bskyrb::AppBskyFeedGetauthorfeed::GetAuthorFeed::Input.new.tap do |q|
        q.actor = username
        q.limit = n
      end
      hydrate_feed HTTParty.get(
        get_author_feed_uri(session.pds, query),
        headers: default_authenticated_headers(session)
      ), Bskyrb::AppBskyFeedGetauthorfeed::GetAuthorFeed::Output
    end

    def get_skyline(n)
      query = Bskyrb::AppBskyFeedGettimeline::GetTimeline::Input.new.tap do |q|
        q.limit = n
      end
      hydrate_feed HTTParty.get(
        get_timeline_uri(session.pds, query),
        headers: default_authenticated_headers(session)
      ), Bskyrb::AppBskyFeedGettimeline::GetTimeline::Output
    end

    def get_popular(n)
      query = Bskyrb::AppBskyUnspeccedGetpopular::GetPopular::Input.new.tap do |q|
        q.limit = n
      end
      hydrate_feed HTTParty.get(
        get_popular_uri(session.pds, query),
        headers: default_authenticated_headers(session)
      ), Bskyrb::AppBskyUnspeccedGetpopular::GetPopular::Output
    end

    def hydrate_feed(response_hash, klass)
      klass.from_hash(response_hash).tap do |feed|
        feed.feed = response_hash["feed"].map do |h|
          Bskyrb::AppBskyFeedDefs::FeedViewPost.from_hash(h).tap do |obj|
            obj.post = Bskyrb::AppBskyFeedDefs::PostView.from_hash h["post"]
            obj.reply = Bskyrb::AppBskyFeedDefs::ReplyRef.from_hash h["reply"] if h["reply"]
          end
        end
      end
    end
  end
end
