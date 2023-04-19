# frozen_string_literal: true

# require_relative "bskyrb/version"
require 'json'
require 'net/http'
require 'httparty'
require 'date'
module ATProto
  class Session
    def initialize(username, password, pds)
      @atp_host = pds
      @atp_auth_token = ""
      @did = ""
      @username = username
      # headers = { "Content-Type" => "application/json" }
      data = { "identifier" => username, "password" => password }.to_json
  
      uri = URI("#{@atp_host}/xrpc/com.atproto.server.createSession")
      response = Net::HTTP.post(uri, data, 'Content-Type' => 'application/json')
     # response = HTTParty.post(uri, body: data.to_json, headers: {'Content-Type' => 'application/json'} )

      parsed_response = JSON.parse(response.body)
  
      @atp_auth_token = parsed_response['accessJwt']
  
      if @atp_auth_token.nil?
        raise ValueError.new("No access token, is your password wrong?")
      end
  
      @did = parsed_response['did']
    end
    def getdid()
      return @did
    end
    
  def resolveHandle(username)
    headers = { "Authorization" => "Bearer #{@atp_auth_token}", "Content-Type" => "application/json" }
    response = HTTParty.get("#{@atp_host}/xrpc/com.atproto.identity.resolveHandle?handle=#{username}", headers: headers)
  
    return response.body
  end
  def get_skoot_by_url(url)
    headers = { "Authorization" => "Bearer #{@atp_auth_token}", "Content-Type" => "application/json" }

    username_of_person_in_link = url.split('/')[-3]
    did_of_person_in_link = JSON.parse(resolveHandle(username_of_person_in_link))['did']
    url_identifier = url.split('/')[-1]

    uri = "at://#{did_of_person_in_link}/app.bsky.feed.post/#{url_identifier}"

    response = HTTParty.get("#{@atp_host}/xrpc/app.bsky.feed.getPostThread?uri=#{uri}", headers: headers)

    return response
  end

  def uploadBlob(blob_path, content_type)
    headers = { "Authorization" => "Bearer #{@atp_auth_token}", "Content-Type" => content_type }
    image_bytes = File.binread(blob_path)

    uri = URI("#{@atp_host}/xrpc/com.atproto.repo.uploadBlob")
    response = HTTParty.post("#{@atp_host}/xrpc/com.atproto.repo.uploadBlob", body: image_bytes, headers: headers)

    return response
  end
  

  def post(postcontent)
    timestamp = DateTime.now.iso8601(3)
    headers = { "Authorization" => "Bearer #{@atp_auth_token}", "Content-Type" => "application/json" }

    data = {
      "collection" => "app.bsky.feed.post",
      "$type" => "app.bsky.feed.post",
      "repo" => "#{@did}",
      "record" => {
        "$type" => "app.bsky.feed.post",
        "createdAt" => timestamp,
        "text" => postcontent
      }
    }

    uri = URI("#{@atp_host}/xrpc/com.atproto.repo.createRecord")


    resp = HTTParty.post(
      uri,
      body: data.to_json,
      headers: headers
    )
   # response = Net::HTTP.post(uri, data.to_json, headers)
    return resp
  end

def method_missing(method_name, *args)
  message = "You called #{method_name} with #{args}. This method doesn't exist."
  
      raise NoMethodError, message
  
end
end 
end 


