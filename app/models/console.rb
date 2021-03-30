class Console < ApplicationRecord
    has_many :console_users
    has_many :users, through: :console_users
end
