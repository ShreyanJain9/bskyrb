# frozen_string_literal: true

module Bskyrb
  class Error < StandardError; end

  class HTTPError < Error; end

  class UnauthorizedError < HTTPError; end
end
