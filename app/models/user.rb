class User < ApplicationRecord
    # has_many :game_users
    # has_many :games, through: :game_users
    has_secure_password validations: false

    has_many :plays
    has_many :games, -> { distinct }, through: :plays

    has_many :console_users
    has_many :consoles, through: :console_users

    validates :firstname, :lastname, :age, :username, presence: true
    validates :firstname, length: { minimum: 2 }
    validates :lastname, length: { minimum: 2 }
    validates :age, numericality: { only_integer: true, greater_than: 12 }
    validates :username, uniqueness: true
    # validates :password, presence: true, length: { minimum: 6 }, confirmation: true, unless: lambda{ persisted? and password.nil? }
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true, unless: :fb_id
    # validates :password_confirmation, presence: true, unless: lambda{ persisted? and password.nil? }
    validates :password_confirmation, presence: true, unless: :fb_id



    def self.find_or_create_through_fb(auth)
        binding.pry
        @user = User.find_by(fb_id: auth['uid'])
        if @user.nil?
            @user = User.new
            @user.username = auth['info']['email']
            @user.firstname = auth['info']['first_name']
            @user.lastname = auth['info']['last_name']
            # Users who sign up through Facebook is given a default age of 20 since Facebook does not grant permission to collect this information without an App Review
            @user.age = 20
            @user.hours_played = 0
            @user.fb_id = auth['uid']
            @user.save
        end   
        @user     
    end

    def admin?
        return true if self.username == "admin"
    end

end
