require 'goliath'
require 'em-synchrony'
require 'em-synchrony/em-http'
require 'nori'
require 'json'

class HelloWorld < Goliath::API
  use Goliath::Rack::Params
  use Goliath::Rack::JSONP

  def response(env)

    params = params(env)
    req = EM::HttpRequest.new(params['url']).get
    
    xml = req.response
    xml.gsub!("<?xml version='1.0' encoding='utf-8'",'<?xml version="1.0" encoding="utf-8"')
    obj = Nori.parse(xml)

    [200, {}, obj.to_json]
  end
end