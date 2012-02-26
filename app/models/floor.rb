module Slimfit
  module Models
    class Floor < ActiveRecord::Base
      belongs_to :building
      has_many :rentals

      validates :number, :square_feet, :presence => true

    end
  end
end
