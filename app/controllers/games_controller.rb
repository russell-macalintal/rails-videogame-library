class GamesController < ApplicationController
    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @games = @user.games
        else
            @games = Game.all
        end
    end

    def new
    # Admin-only action
        @game = Game.new
    end
    
    def create
    # Admin-only action
        @game = Game.create(game_params)
        redirect_to games_path
    end

    def show
        @game = Game.find(params[:id])
    end

    def edit
        @game = Game.find(params[:id])
    end

    def update
        @game = Game.find(params[:id])
        @game.update(game_params)
        redirect_to game_path(@game)
    end


    def game_params
        params.require(:game).permit(:name, :developer, :hours_played)
    end
end
 