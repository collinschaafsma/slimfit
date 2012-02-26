module Slimfit
  module Controllers
    class BuildingsController < ApplicationController

      get '/' do
        @presenter = Slimfit::Presenters::Building::Index.new
        erb :'buildings/index'
      end

    end
  end
end
