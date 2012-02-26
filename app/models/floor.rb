module Slimfit
  module Models
    class Floor < ActiveRecord::Base
      belongs_to :building

    end
  end
end
