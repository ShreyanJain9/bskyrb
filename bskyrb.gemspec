lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bskyrb/version"

specfiles = Dir["./lib/**/*.rb"]

Gem::Specification.new do |spec|
  spec.name = "bskyrb"
  spec.version = Bskyrb::VERSION
  spec.authors = ["Shreyan Jain", "Tynan Burke"]
  spec.email = ["shreyan.jain.9@outlook.com"]
  spec.description = "A Ruby gem for interacting with bsky/atproto"
  spec.summary = "Interact with bsky/atproto using Ruby"
  spec.homepage = "https://github.com/ShreyanJain9/bskyrb"
  spec.license = "MIT"
  spec.files = specfiles
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "at_protocol", "~> 0.0.4.1"
end
