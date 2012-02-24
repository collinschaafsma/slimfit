module Slimfit
  module Controllers
    class WelcomeController < ApplicationController

      get '/' do
        @building = Slimfit::Presenters::Welcome::Index.new
        erb :'welcome/index'
      end

    end
  end
end
