module PlaysHelper

    def gameplay_hours(game)
        current_user.plays.where(game_id: game.id).sum(:hours_played)
    end
    
end
