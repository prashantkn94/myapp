
class UsersController < ApplicationController
  def new
    if logged_in?
      redirect_to root_path and return
    end
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  	if @user.save
  	  log_in @user
  	else
  	  render 'new' and return
    end
    redirect_to root_path
  end

   private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end	
end
