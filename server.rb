require 'goliath'
require 'em-synchrony/em-http'
require 'bundler'
require 'json'
Bundler.require

class GoodreadsConverter < Goliath::API
  use Goliath::Rack::Params
  use Goliath::Rack::JSONP
  use Goliath::Rack::Render, ['json']

  def response(env)
    result = dispatch(env)
  end

  private

  # def dispatch(env)
  #   result = Movieclips.send(method, env)
  # end

  BASE = 'http://www.goodreads.com/'

  def dispatch(env)

    # Make the request
    raw = HTTP.request('search/videos', params)
    raw.inspect
    # body = raw[:body]

    # # When movieclips finds exactly one hit, the search
    # # returns not an array, but only that hit. So yeah.
    # entries = [entries].flatten
    # s = entries.map{|e| parse_entry(e)}.compact

    # # Exclude movie names if asked for
    # if options[:exclude_movie]
    #   s = s.select do |e|
    #     title = e[:movie][:name]
    #     select = true
    #     options[:exclude_movie].split(",").each do |f|
    #       next unless title.downcase.include?(f)
    #       select = false
    #     end
    #     select
    #   end
    # end

    # [raw[:status], {}, s.to_json]
  end


end
