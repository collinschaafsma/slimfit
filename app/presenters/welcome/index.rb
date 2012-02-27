module Slimfit
  module Presenters
    module Welcome
      class Index < Slimfit::Presenters::ApplicationPresenter

        attr_reader :building_interface

        def initialize(building_interface = Slimfit::Interfaces::BuildingInterface.new)
          @building_interface = building_interface
        end

        def featured_building
          @building_interface.featured_building
        end

      end
    end
  end
end
