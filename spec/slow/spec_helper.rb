ENV['RACK_ENV'] = "test"
require './config/boot'
require 'capybara/rspec'

Capybara.app = Rack::Builder.parse_file('./config.ru').first

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
