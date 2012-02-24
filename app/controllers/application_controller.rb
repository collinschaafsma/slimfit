module Slimfit
  module Controllers
    class ApplicationController < Sinatra::Base

      #################
      # MIDDLEWARE
      #################

      use Rack::Session::Cookie
      use Rack::Deflater
      use Rack::Cache,
        :verbose => true,
        :metastore => "memcached://#{ENV['MEMCACHE_SERVERS']}",
        :entitystore => "memcached://#{ENV['MEMCACHE_SERVERS']}"

      #################
      # SETTINGS
      #################

      enable :raise_errors
      set :method_override, true
      set :public_folder, './assets'
      set :views, './app/views'

    end
  end
end
