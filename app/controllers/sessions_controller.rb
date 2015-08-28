class SessionsController < ApplicationController

  def new
  end


  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to '/'
    else
      flash[:danger] = "Invalid email/password combination"
      redirect_to '/'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to '/'
  end

end
