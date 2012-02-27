require './spec/slow/spec_helper'

describe Slimfit::Models::Rental  do
  include Shoulda::Matchers::ActiveRecord
  include Shoulda::Matchers::ActiveModel

  subject { Slimfit::Models::Rental.new }

  describe "#associations" do
    it { should belong_to(:floor) }
  end

  describe "#validations" do
    it { should validate_presence_of :square_feet }
    it { should validate_presence_of :type }
    it { should validate_presence_of :cost_per_square_feet }
    it { should validate_presence_of :tripple_net }
  end
end


