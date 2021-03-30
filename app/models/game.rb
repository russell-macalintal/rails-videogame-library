class Game < ApplicationRecord
    # has_many :game_users
    # has_many :users, through: :game_users

    has_many :plays
    has_many :users, through: :plays
end
