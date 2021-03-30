class User < ApplicationRecord
    # has_many :game_users
    # has_many :games, through: :game_users

    has_many :plays
    has_many :games, through: :plays

    has_many :console_users
    has_many :consoles, through: :console_users

    has_secure_password

    def new
    end

    def create
    end
    
end
