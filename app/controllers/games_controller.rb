class GamesController < ApplicationController
    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @games = @user.games
        else
            @games = Game.all
        end
    end

    def show
        @game = Game.find(params[:id])
    end
end
 