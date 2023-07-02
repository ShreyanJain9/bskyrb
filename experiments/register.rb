require "secp256k1"
require "bigdecimal"
require "httparty"
require "json"

B58BT = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

class Array
  def to_base58
    r = ""
    n = BigDecimal("0")
    each do |byte|
      n = n * 256 + byte
    end
    loop do
      r += B58BT[n % 58]
      n /= 58
      break if n == 0
    end
    r.reverse
  end
end

key = Secp256k1::PrivateKey.new
public_key = key.pubkey
compressed_public_key = public_key.serialize(compressed: true)

did = "did:key:z#{(Bytes[0xe7, 0x1] + compressed_public_key).to_base58}"
fn = "#{did.split(":")[-1]}.key"
File.write(fn, key.private_key)

puts "Stored the private key for '#{did}' as a hexstring in #{fn}.\nKeep it safe and secure!"
print "On which server do you want to register (just press Enter if you're clueless what that means)? "
host = (gets || "").chomp
print "What's your email? "
email = (gets || "").chomp
print "What handle do you want? "
handle = (gets || "").chomp
print "What password do you want to use? "
password = (gets || "").chomp
print "And finally: What's your invite code? "
inviteCode = (gets || "").chomp

host = "https://bsky.social" if host.empty?
host = "https://#{host}" unless host.start_with?("http")
headers = {
  "Content-Type" => "application/json"
}
body = {
  handle: handle,
  password: password,
  email: email,
  inviteCode: inviteCode,
  recoveryKey: did
}.to_json
response = HTTParty.post("#{host}/xrpc/com.atproto.server.createAccount", headers: headers, body: body)
jres = JSON.parse(response.body)
if (error = jres["error"])
  puts "Couldn't create the account, because… #{jres["error"]}: #{jres["message"] || "???"}"
  puts "The key has not been removed, in case account creation was somehow successful - but that's unlikely :("
else
  puts "Hooray! All good."
  puts "IMPORTANT: Copy the file with the private key to a safe place like your home folder (just don't leave it in the temp dir if that's where we are)!"
end
