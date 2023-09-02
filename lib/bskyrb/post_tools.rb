# typed: true
module Bskyrb
  module PostTools
    include Atmosfire::RequestUtils
    extend T::Sig

    sig { params(post_record: Atmosfire::Record).returns(Hash) }

    def root_post(post_record)
      if post_record.content["reply"].nil?
        post_record.strongref.to_json
      else
        post_record.content["reply"]["root"]
      end
    end

    def create_facets(text, pds = "https://bsky.social")
      facets = []

      # Regex patterns
      mention_pattern = /(^|\s|\()(@)([a-zA-Z0-9.-]+)(\b)/
      link_pattern = URI.regexp

      # Find mentions
      text.enum_for(:scan, mention_pattern).each do |m|
        index_start = T.must(Regexp.last_match).offset(0).first
        index_end = T.must(Regexp.last_match).offset(0).last
        did = resolve_handle((m.join("").strip)[1..-1], pds) #["did"]
        unless did.nil?
          facets.push(
            "$type" => "app.bsky.richtext.facet",
            "index" => {
              "byteStart" => index_start,
              "byteEnd" => index_end,
            },
            "features" => [
              {
                "did" => did, # this is the matched mention
                "$type" => "app.bsky.richtext.facet#mention",
              },
            ],
          )
        end
      end

      # Find links
      text.enum_for(:scan, link_pattern).each do |m|
        index_start = T.must(Regexp.last_match).offset(0).first
        index_end = T.must(Regexp.last_match).offset(0).last
        m.compact!
        link = URI.join("#{m[0]}:/", "#{m[1]}#{m[2..-1].join("")}".strip).to_s.chomp("/")
        facets.push(
          "$type" => "app.bsky.richtext.facet",
          "index" => {
            "byteStart" => index_start,
            "byteEnd" => index_end,
          },
          "features" => [
            {
              "uri" => link, # this is the matched link
              "$type" => "app.bsky.richtext.facet#link",
            },
          ],
        )
      end

      facets.empty? ? nil : facets
    end

    sig { params(reply_uri: String, pds: String).returns(Hash) }

    def reply_ref(reply_uri, pds: "https://bsky.social")
      reply_to = Atmosfire::Record.from_uri(at_uri(reply_uri, pds))
      {
        "parent" => reply_to.strongref.to_json,
        "root" => root_post(reply_to),
      }
    end
  end
end

module Bskyrb
  class PostRecord
    include PostTools
    extend T::Sig
    attr_accessor :text, :timestamp, :facets, :embed, :pds, :reply

    def initialize(text, timestamp: DateTime.now.iso8601(3), pds: "https://bsky.social", reply: nil)
      @text = T.let(text, String)
      @timestamp = timestamp
      @pds = pds
      @reply = reply_ref(reply, pds: pds) unless reply.nil?
      create_facets!()
    end

    sig { returns(Hash) }

    def to_json_hash
      {
        "text" => @text,
        "createdAt" => @timestamp,
        "$type" => "app.bsky.feed.post",
        "facets" => @facets,
        "embed" => @embed,
        "reply" => @reply,
      }.compact
    end

    def create_facets!()
      @facets = T.let(create_facets(@text, pds), T.nilable(Array))
    end
  end
end

module Bskyrb
  module PostTools
    class Facet
    end
  end
end
