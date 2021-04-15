class UsersController < ApplicationController
    
    def index
        @users = User.all
    end

    def new
        @user= User.new
    end

    def create
        @user = User.create(user_params)
        if @user.errors.empty?
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
    end


    def user_params
        params.require(:user).permit(:firstname, :lastname, :age, :username, :password, :password_confirmation)
    end
end
