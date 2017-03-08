require 'openssl'
require 'net/http'
require 'json'
require 'base64'

require 'easy_request/http_request'
require 'easy_request/http_response'

class EasyRequest

  def self.get(url, auth=nil, headers=nil)
    http = HttpRequest.new url
    http.set_auth auth
    http.set_method 'GET'
    http.set_extra_headers headers

    response = http.execute_request

    return response
  end

  def self.post(url, data=nil, auth=nil, headers=nil)
    http = HttpRequest.new url
    http.set_auth auth
    http.set_method 'POST'
    http.set_data data unless data.nil?
    http.set_extra_headers headers

    response = http.execute_request

    return response
  end

  def self.put(url, data=nil, auth=nil, headers=nil)
    http = HttpRequest.new url
    http.set_auth auth
    http.set_method 'PUT'
    http.set_data data unless data.nil?
    http.set_extra_headers headers

    response = http.execute_request

    return response
  end

  def self.delete(url, data=nil, auth=nil, headers=nil)
    http = HttpRequest.new url
    http.set_auth auth
    http.set_method 'DELETE'
    http.set_data data unless data.nil?
    http.set_extra_headers headers

    response = http.execute_request

    return response
  end

end