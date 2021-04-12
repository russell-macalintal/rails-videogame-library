class User < ApplicationRecord
    # has_many :game_users
    # has_many :games, through: :game_users

    has_many :plays
    has_many :games, through: :plays

    has_many :console_users
    has_many :consoles, through: :console_users

    validates :firstname, :lastname, :age, :username, :password, :password_confirmation, presence: true
    validates :firstname, length: { minimum: 2 }
    validates :lastname, length: { minimum: 2 }
    validates :age, numericality: { only_integer: true, greater_than: 12 }
    validates :username, uniqueness: true
    validates :password, confirmation: true

    has_secure_password

end
