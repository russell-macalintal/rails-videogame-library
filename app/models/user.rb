class User < ApplicationRecord
    # has_many :game_users
    # has_many :games, through: :game_users

    has_many :plays
    has_many :games, -> { distinct }, through: :plays

    has_many :console_users
    has_many :consoles, through: :console_users

    validates :firstname, :lastname, :age, :username, presence: true
    validates :firstname, length: { minimum: 2 }
    validates :lastname, length: { minimum: 2 }
    validates :age, numericality: { only_integer: true, greater_than: 12 }
    validates :username, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true, unless: lambda{ persisted? and password.nil? }
    validates :password_confirmation, presence: true, unless: lambda{ persisted? and password.nil? }

    has_secure_password

    def admin?
        return true if self.username == "admin"
    end

end
