class PagesController < ApplicationController
  def home
    @title = "Home"
  end # home

  def contact
    @title = "Contact"
  end # contact
  
  def about
    @title = "About"
  end # about
  
  def help
    @title = "Help"
  end #help
end
