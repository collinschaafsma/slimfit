module Slimfit
  module Models
    class Building < ActiveRecord::Base
      has_many :floors

    end
  end
end
