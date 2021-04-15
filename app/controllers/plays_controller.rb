class PlaysController < ApplicationController
    def create
        play = Play.create(play_params)
        play.play_game
        user = User.find(play.user_id)
        redirect_to user_games(user)
    end

    def play_params
        params.permit(:user_id, :game_id, :hours_played)
    end
end
