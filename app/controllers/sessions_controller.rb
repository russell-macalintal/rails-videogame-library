class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user.nil?
      flash[:error] = "User does not exist."
      redirect_to '/login'
    else
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to root_url
      else
        flash[:error] = "Username and password do not match."
        redirect_to '/login'
      end
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end
