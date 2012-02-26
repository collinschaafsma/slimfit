module Slimfit
  module Models
    class Rental < ActiveRecord::Base
      belongs_to :floor

      validates :square_feet, :type, :cost_per_square_feet,
        :tripple_net, :presence => true

    end
  end
end
