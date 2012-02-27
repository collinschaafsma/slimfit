require './spec/fast/spec_helper'
require 'active_record'
require './app/interfaces/building_interface'
require './app/models/building'

Target = Class.new do
  def self.create!(options);end
  def self.create(options);end
  def self.find(id)
    self
  end
  def self.all;end
  def destroy;end
  def update_attributes(options = {});end
end

describe Slimfit::Interfaces::BuildingInterface do
  subject { Slimfit::Interfaces::BuildingInterface.new(Target) }

  it "should default the target to the building model" do
    interface = Slimfit::Interfaces::BuildingInterface.new
    interface.target.name.should == "Slimfit::Models::Building"
  end

  it "should accept any Class as a target" do
    MyClass = Class.new
    interface = Slimfit::Interfaces::BuildingInterface.new(MyClass)
    interface.target.name.should == "MyClass"
  end

  it "should have a #new_building method" do
    subject.respond_to?(:new_building).should == true
  end

  it "should have a #build! method" do
    subject.respond_to?(:build!).should == true
  end

  it "should have a #build method" do
    subject.respond_to?(:build).should == true
  end

  it "should have a #remodel method" do
    subject.respond_to?(:remodel).should == true
  end

  it "should have a #demolish method" do
    subject.respond_to?(:demolish).should == true
  end

  it "should have a #find method" do
    subject.respond_to?(:find).should == true
  end

  it "should have a #all method" do
    subject.respond_to?(:all).should == true
  end

  describe "#build!" do
    it "should raise an ArgumentError error if no options are passed" do
      expect { subject.build! }.to raise_error(ArgumentError)
    end

    it "should call #create on the target" do
      subject.target.should_receive(:create)
      subject.build({})
    end
  end

  describe "#build" do
    it "should raise an ArgumentError error if no options are passed" do
      expect { subject.build }.to raise_error(ArgumentError)
    end
  end

  describe "#remodel" do
    it "should raise an ArgumentError error if no id is passed" do
      expect { subject.remodel }.to raise_error(ArgumentError)
    end

    it "should call #update_attributes on the target" do
      subject.target.should_receive(:update_attributes)
      subject.remodel(1,{})
    end
  end

  describe "#demolish" do
    it "should raise an ArgumentError error if no id is passed" do
      expect { subject.demolish }.to raise_error(ArgumentError)
    end

    it "should call #destroy on the target" do
      subject.target.should_receive(:destroy)
      subject.demolish(1)
    end
  end

  describe "#find" do
    it "should raise an ArgumentError error if no id is passed" do
      expect { subject.find }.to raise_error(ArgumentError)
    end

    it "should call #find on the target" do
      subject.target.should_receive(:find)
      subject.find(1)
    end
  end

  describe "#all" do
    it "should call #all on the target" do
      subject.target.should_receive(:all)
      subject.all
    end
  end

  describe "#new_building" do
    it "should return a instance of the target" do
      subject.new_building.instance_of?(Target).should == true
    end
  end

end


