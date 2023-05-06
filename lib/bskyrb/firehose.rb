require "faye/websocket"
require "eventmachine"
require "cbor"
require "json"

EM.run {
  ws = Faye::WebSocket::Client.new("wss://bsky.social/xrpc/com.atproto.sync.subscribeRepos")

  ws.on :open do |event|
    p [:open]
    ws.send("Hello, world!")
  end

  ws.on :message do |event|
    msg_bytes = event.data
    unpacker = CBOR::Unpacker.new(StringIO.new(msg_bytes.pack("C*")))
    header, payload = unpacker.each.to_a

    # decoder = CBOR::Decoding.new(StringIO.new(msg_bytes.pack('C*')))
    # while item = decoder.read
    #     puts item
    # end

    if payload["ops"].first["path"].include? "app.bsky.feed.post"
      # payload#["blocks"].length
      decoded = CBOR.decode(payload)

      # Convert the decoded object to JSON
      json = decoded.to_json

      # Print the JSON object
      puts json
    end
  end
}
# end
