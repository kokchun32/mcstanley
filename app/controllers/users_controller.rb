class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/users/index', notice: 'User successfully created.'
    else
      redirect_to '/signup'
    end
  end

  def index
    @users = User.all
  end
  
private
  def user_params
    params.fetch(:user).permit(:username, :password, :role, :image)
  end
end
