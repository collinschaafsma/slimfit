require './spec/fast/spec_helper'
require './app/interfaces/building_interface'
require './app/presenters/application_presenter'
require './app/presenters/buildings/index'

describe Slimfit::Presenters::Building::Index do
  subject do
    interface = Slimfit::Interfaces::BuildingInterface.new(Target)
    Slimfit::Presenters::Building::Index.new(interface)
  end

  describe "#buildings" do
    it "should return an array of buildings from the interface" do
      subject.buildings.instance_of?(Array).should == true
    end
  end

  describe "#building_location" do
    it "should return a building location based on city and state" do
      subject.building_location(Building.new).should == "Boulder, CO"
    end
  end
end
