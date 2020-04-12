class SessionsController < ApplicationController
  def new
  end

  def create
    user = SecureUser.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:secure_user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:secure_user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
