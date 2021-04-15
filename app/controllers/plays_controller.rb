class PlaysController < ApplicationController

    def new
        @game = Game.find(params[:game_id])
        @play = Play.new
    end
    
    def create
        @play = Play.create(play_params)
        @play.game_id = params[:game_id]
        @play.user_id = params[:user_id]
        flash[:notice] = @play.play_game
        user = User.find(params[:user_id])
        redirect_to user_games_path(user)
    end

    def play_params
        params.require(:play).permit(:user_id, :game_id, :hours_played)
    end
end
