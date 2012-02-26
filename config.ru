require File.dirname(__FILE__) + '/config/boot.rb'

run Rack::URLMap.new({
  "/"     => Slimfit::Controllers::WelcomeController,
  "/buildings"     => Slimfit::Controllers::BuildingsController,
})
