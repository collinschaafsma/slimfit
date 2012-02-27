require './spec/slow/spec_helper'

describe Slimfit::Controllers::BuildingsController, :type => :request do

  it "buildings index should be successful" do
    visit '/buildings'
    page.status_code.should == 200
  end
end

