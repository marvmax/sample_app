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
  
  it "should have a singup page a '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign Up")
  end # should hava a About page
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Help"
    response.should have_selector('title', :content => "Help")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign Up")
  end # it should have the right links on the layout
  
end # LayoutLinks
