require './spec/slow/spec_helper'

describe Slimfit::Models::Building  do
  include Shoulda::Matchers::ActiveRecord
  include Shoulda::Matchers::ActiveModel

  subject { Slimfit::Models::Building.new }

  describe "#associations" do
    it { should have_many(:floors) }
  end

  describe "#validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :type }
    it { should validate_presence_of :year_built }
  end
end
