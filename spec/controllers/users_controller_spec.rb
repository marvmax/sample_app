require 'spec_helper'

describe UsersController do
  render_views
  
  describe "GET 'new'" do  
    it "should be successful" do
      get 'new'
      response.should be_success
    end # it should be successful
    
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "Sign Up")
    end # it should have the right title
  end # GET new

end # UserController
