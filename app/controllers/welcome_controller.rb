module Slimfit
  module Controllers
    class WelcomeController < ApplicationController

      get '/' do
        erb :'welcome/index'
      end

    end
  end
end
