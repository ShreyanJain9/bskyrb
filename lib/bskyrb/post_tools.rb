require "uri"
require_relative "../atproto/requests"
require "xrpc"
# module Bskyrb
#   include Atmosfire

#   class Client
#     include RequestUtils
#     attr_reader :session

#     def initialize(session)
#       @session = session
#     end
#   end
# end

module Bskyrb
  module PostTools
    def create_facets(text)
      facets = []

      # Regex patterns
      mention_pattern = /(^|\s|\()(@)([a-zA-Z0-9.-]+)(\b)/
      link_pattern = URI.regexp

      # Find mentions
      text.enum_for(:scan, mention_pattern).each do |m|
        index_start = Regexp.last_match.offset(0).first
        index_end = Regexp.last_match.offset(0).last
        did = resolve_handle(@pds, (m.join("").strip)[1..-1])["did"]
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
        index_start = Regexp.last_match.offset(0).first
        index_end = Regexp.last_match.offset(0).last
        m.compact!
        path = "#{m[1]}#{m[2..-1].join("")}".strip
        facets.push(
          "$type" => "app.bsky.richtext.facet",
          "index" => {
            "byteStart" => index_start,
            "byteEnd" => index_end,
          },
          "features" => [
            {
              "uri" => URI.parse("#{m[0]}://#{path}/").normalize.to_s, # this is the matched link
              "$type" => "app.bsky.richtext.facet#link",
            },
          ],
        )
      end

      facets.empty? ? nil : facets
    end
  end
end

module Bskyrb
  class PostRecord
    include ATProto::RequestUtils
    include PostTools
    attr_accessor :text, :timestamp, :facets, :embed, :pds

    def initialize(text, timestamp: DateTime.now.iso8601(3), pds: "https://bsky.social")
      @text = text
      @timestamp = timestamp
      @pds = pds
    end

    def to_json_hash
      {
        text: @text,
        createdAt: @timestamp,
        "$type": "app.bsky.feed.post",
        facets: @facets,
      }
    end

    def create_facets!()
      @facets = create_facets(@text)
    end
  end
end
