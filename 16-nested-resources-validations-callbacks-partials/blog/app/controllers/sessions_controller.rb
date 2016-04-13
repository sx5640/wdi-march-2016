class SessionsController < ApplicationController
  # skip_before_action :ensure_logged_in, except: [:destroy]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "You successfully logged in!"
      redirect_to root_url
    else
      flash.now[:alert] = "Wrong email or password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been logged out"
    redirect_to root_url
  end
end
