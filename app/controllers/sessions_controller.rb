class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user.nil?
      redirect_to '/login'
    else
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to root_url
      else
        redirect_to '/login'
      end
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end
