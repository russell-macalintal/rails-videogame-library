class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.errors.empty?
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors
            redirect_to new_user_path(@user)
        end
    end

    def show
        if logged_in?
            current_user
        else
            redirect_to root_url
        end
    end


    def user_params
        params.require(:user).permit(:firstname, :lastname, :age, :username, :password, :password_confirmation)
    end
end
