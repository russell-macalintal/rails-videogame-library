class Play < ApplicationRecord
    belongs_to :game
    belongs_to :user

    def play_game
        user = User.find(self.user_id)
        game = Game.find(self.game_id)
        if self.hours_played.nil?
            "No hours logged for this Play Session."
        else
            user.update(hours_played: user.hours_played + self.hours_played)
            game.update(hours_played: game.hours_played + self.hours_played)
            "Awesome Play Session! You played #{self.hours_played} #{'hour'.pluralize(self.hours_played)} of #{game.name}"
        end
    end
end
