class PlaysController < ApplicationController

    def new
        @game = Game.find(params[:game_id])
        @user = User.find(session[:user_id])
    end
    
    def create
        @play = Play.create(play_params)
        flash[:notice] = @play.play_game
        user = User.find(session[:user_id])
        redirect_to user_games_path(user)
    end

    def play_params
        params.require(:play).permit(:user_id, :game_id, :hours_played)
    end
end
