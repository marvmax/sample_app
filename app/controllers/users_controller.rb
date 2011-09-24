class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end # show
  
  def new
    @title = "Sign Up"
  end # new

end
