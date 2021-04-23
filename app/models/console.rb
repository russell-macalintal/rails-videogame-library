class Console < ApplicationRecord
    has_many :console_users
    has_many :users, -> { distinct }, through: :console_users

    validates :name, uniqueness: true

    def self.most_popular
        # console_id = self.joins(:users)
        #     .select("users.*, count(users.id) as ucount")
        #     .group("users.id")
        #     .order("ucount DESC")
        #     .first.id
        # self.find(console_id)
    end
end
