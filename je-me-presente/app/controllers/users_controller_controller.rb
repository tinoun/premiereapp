class UsersControllerController < ApplicationController
  def new


  end

  def user
@username = params[:username]
@bio = params[:bio]

user = User.new 
user.username = @username 
user.bio = @bio
user.save 
@id = user.id 
redirect_to show_path(@id)

  end

  def show

@user = User.find(params[:id])
@nickname = @user.username 
@bio  = @user.bio

  end

end
