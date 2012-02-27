require './spec/slow/spec_helper'

describe Slimfit::Models::Floor  do
  include Shoulda::Matchers::ActiveRecord
  include Shoulda::Matchers::ActiveModel

  subject { Slimfit::Models::Floor.new }

  describe "#associations" do
    it { should have_many(:rentals) }
    it { should belong_to(:building) }
  end

  describe "#validations" do
    it { should validate_presence_of :number }
    it { should validate_presence_of :square_feet }
  end
end

