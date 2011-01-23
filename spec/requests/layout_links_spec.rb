require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page a '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end # should hava a Home page
  
  it "should have a Contact page a '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end # should hava a Contact page
  
  it "should have a About page a '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end # should hava a About page
  
  it "should have a Help page a '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end # should hava a About page
  
end # LayoutLinks
