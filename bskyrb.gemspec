Gem::Specification.new do |spec|
  spec.name          = "bskyrb"
  spec.version       = "0.2"
  spec.authors       = ["Shreyan Jain"]
  spec.email         = ["shreyan.jain.9@outlook.com"]
  spec.description   = "A script for interacting with bsky/atproto"
  spec.summary       = "Interact with bsky/atproto using Ruby"
  spec.homepage      = "https://github.com/ShreyanJain9/bskyrb"
  spec.license       = "MIT"
  spec.files         = ["lib/bskyrb.rb"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "json", ">= 2.0"
  spec.add_runtime_dependency "net-http"
  spec.add_runtime_dependency "date"
  spec.add_runtime_dependency "httparty"
end
