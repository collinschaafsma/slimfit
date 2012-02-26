ENV['RACK_ENV'] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
require 'capybara/rspec'

Capybara.app = Rack::Builder.parse_file(File.expand_path('../../config.ru', __FILE__)).first

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
