require './spec/slow/spec_helper'

describe Slimfit::Controllers::WelcomeController, :type => :request do

  it "index should be successful" do
    visit '/'
    page.status_code.should == 200
  end
end
