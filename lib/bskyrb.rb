# typed: true
# frozen_string_literal: true
require "sorbet-runtime"
require "at_protocol"
require "bskyrb/post_tools"

module Bskyrb
  include ATProto

  class Error < StandardError; end

  class HTTPError < Error; end

  class UnauthorizedError < HTTPError; end
end

require "bskyrb/client"
