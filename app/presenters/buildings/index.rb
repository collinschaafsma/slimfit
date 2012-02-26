module Slimfit
  module Presenters
    module Building
      class Index < Slimfit::Presenters::ApplicationPresenter

        def buildings
          Slimfit::Interfaces::BuildingInterface.new.all
        end

        def building_name
          
        end

      end
    end
  end
end
