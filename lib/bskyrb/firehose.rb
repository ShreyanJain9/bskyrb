require 'faye/websocket'
require 'eventmachine'
require 'cbor'

EM.run {
  ws = Faye::WebSocket::Client.new('wss://bsky.social/xrpc/com.atproto.sync.subscribeRepos')

  ws.on :open do |event|
    p [:open]
    ws.send('Hello, world!')
  end

  ws.on :message do |event|
    msg_bytes = event.data
    unpacker = CBOR::Unpacker.new(StringIO.new(msg_bytes.pack('C*')))
    header, payload = unpacker.each.to_a

    begin
      if payload["ops"].first["path"].include? "app.bsky.feed.post"
        puts payload["blocks"].length
      end
    end
  end
end
