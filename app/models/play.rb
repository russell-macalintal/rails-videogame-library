class Play < ApplicationRecord
    belongs_to :game
    belongs_to :user

    def play_game

    end
end
