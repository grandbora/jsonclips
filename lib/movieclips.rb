# http://api.movieclips.com/v2/videos/2MYWd
require_relative './movieclips_search.rb'
require_relative './movieclips_video.rb'
require_relative './movieclips_http.rb'

module Movieclips

  BASE = 'http://api.movieclips.com/v2/'

  def self.search(env)
    Search.search(env['QUERY_STRING'])
  end

  def self.videos(env)
    Video.show(env['REQUEST_PATH'].split('/').last)
  end

  def self.sleepypants(params)
    puts "Sleep"
    sleep 5
    puts "Wakeup"
    "HOLA"
  end

end
