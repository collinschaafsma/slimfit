module Slimfit
  module Presenters
    module Welcome
      class Index < Slimfit::Presenters::ApplicationPresenter

        def building
          Slimfit::Interfaces::BuildingInterface.new.new_building
        end

        def building_name
          building.name
        end

      end
    end
  end
end
