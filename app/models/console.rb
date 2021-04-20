class Console < ApplicationRecord
    has_many :console_users
    has_many :users, through: :console_users

    validates :name, uniqueness: true
end
