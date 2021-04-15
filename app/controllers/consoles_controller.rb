class ConsolesController < ApplicationController
    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @consoles = @user.consoles
        else
            @consoles = Console.all
        end
    end

    def show
        @console = Console.find(params[:id])
    end
end
