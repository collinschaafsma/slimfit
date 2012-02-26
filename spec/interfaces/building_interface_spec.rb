require 'active_record'
require './app/interfaces/building_interface'
require './app/models/building'

describe Slimfit::Interfaces::BuildingInterface do
  subject { Slimfit::Interfaces::BuildingInterface.new }
  let(:building) { Slimfit::Models::Building }

  before(:all) do
    config = YAML.load(File.read("./config/database.yml"))
    ActiveRecord::Base.establish_connection(config['test'])
  end

  it "should have a #new_building method" do
    subject.respond_to?(:new_building).should == true
  end

  describe "#new_building" do
    it "should return a instance of the building model" do
      subject.new_building.attributes.should == building.new.attributes
    end
  end
end


