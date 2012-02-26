module Slimfit
  module Interfaces
    class BuildingInterface

      def initialize(target = Slimfit::Models::Building)
        @target = target
      end

      def all
        @target.all
      end

      def new_building
        @target.new
      end

    end
  end
end
