module Slimfit
  module Models
    class Building < ActiveRecord::Base
      has_many :floors

      validates :name, :city, :state, :type,
        :year_built, :presence => true

    end
  end
end
