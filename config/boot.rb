ENV["RACK_ENV"] ||= "development"

require 'bundler'
Bundler.setup
Bundler.require(:default, ENV["RACK_ENV"].to_sym)

require 'json'
require 'rack/deflater'

Dir["./app/models/*.rb"].each       { |f| require f }
Dir["./app/controllers/*.rb"].each  { |f| require f }
Dir["./app/interfaces/*.rb"].each   { |f| require f }
Dir["./app/presenters/*.rb"].each   { |f| require f }
