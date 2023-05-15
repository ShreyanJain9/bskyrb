# typed: false
require "uri"
require "httparty"
require "json"

module XRPC
  class Endpoint
    attr_reader :request_uri

    def initialize(pds, endpoint_location, *params)
      @pds = pds
      @endpoint_location = endpoint_location
      @params = params
    end

    def get(params)
      query_params = URI.encode_www_form(params)
      @request_uri = URI("#{@pds}/xrpc/#{@endpoint_location}?#{query_params}")

      response = HTTParty.get(@request_uri)
      JSON.parse(response.body)
    end
  end
end
