class User < ApplicationRecord
    has_many :game_users
    has_many :games, through: :game_users

    has_many :console_users
    has_many :consoles, through: console_users

    has_secure_password
end
