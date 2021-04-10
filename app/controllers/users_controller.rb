class UsersController < ApplicationController
    
    def new
    end

    def create
        # Add error messages for failed attribute validation.
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
    end

    def show
        if session[:user_id]
            @user = User.find(session[:user_id])
        else
            redirect_to root_url
        end
    end


    def user_params
        params.require(:user).permit(:firstname, :lastname, :age, :username, :password, :password_confirmation)
    end
end
