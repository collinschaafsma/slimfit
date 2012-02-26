require './spec_integration/spec_helper'

describe Slimfit::Controllers::WelcomeController do
  def app
    @app ||= Slimfit::Controllers::WelcomeController
  end

  it "says hello" do
    get '/'
    last_response.should be_ok
  end
end
