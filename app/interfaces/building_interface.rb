module Slimfit
  module Interfaces
    class BuildingInterface

      attr_reader :target

      def initialize(target = Slimfit::Models::Building)
        @target = target
      end

      def build!(options)
        @target.create!(options)
      end

      def build(options)
        @target.create(options)
      end

      def remodel(id, options = {})
        building = find(id)
        building.update_attributes(options)
      end

      def demolish(id)
        building = find(id)
        building.destroy
      end

      def find(id)
        @target.find(id)
      end

      def all
        @target.all
      end

      def new_building(options = {})
        @target.new(options)
      end

      def featured_building
        @target.all(:conditions => {:featured => true}, :limit => 1)
      end

    end
  end
end
