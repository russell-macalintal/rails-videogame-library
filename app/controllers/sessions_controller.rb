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

  def create_through_fb
    puts auth_hash['info']['name'].split.first
    puts auth_hash['info']['name'].split.last
    @user = User.find_or_create_through_fb(auth_hash)
    if @user.id == nil
      flash[:error] = "Error: Could not link your Facebook account"
      redirect_to '/login'
    else
      session[:user_id] = @user.id
      redirect_to root_url
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

  def auth_hash
    request.env['omniauth.auth']
  end

end
