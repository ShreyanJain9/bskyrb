# typed: false
require "uri"
require "httparty"
require "json"

module XRPC
    class Requester
        :attr_reader request_uri
        def initialize(endpoint_location, params)
            #Params is a json array of params for the method
            @endpoint_location = endpoint_location
            @request_uri = URI("#{pds}/xrpc/#{endpoint_location}?#{params}")
        end
        def request
            HTTParty.get(@request_uri)
            #TODO: Actually make usable. this is very much a placeholder for now
        end
    end
end
