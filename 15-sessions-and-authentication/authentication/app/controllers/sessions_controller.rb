class SessionsController < ApplicationController

  def new
  end

  # Logging in
  def create
    user = User.find_by email: params[:email]

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Successfully logged in!'
    else
      flash[:alert] = 'Invalid credentials!'
      render :new
    end
  end

  # Logging out
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
