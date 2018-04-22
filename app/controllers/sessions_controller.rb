class SessionsController < ApplicationController
  def new
  	if logged_in?
  		redirect_to root_path
    else
      render 'login'
     end
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    log_out
  end

  def history
    if logged_in?
    @res = current_user.terms
    else
      redirect_to action: "new"
    end
  end

end
