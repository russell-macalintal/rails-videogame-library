class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user.nil?
      redirect_to '/login'
    else
      if @user.autheticate(params[:password])
        session[:user_id] = @user.id
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
