class Console < ApplicationRecord
    has_many :console_users
    has_many :users, -> { distinct }, through: :console_users

    validates :name, uniqueness: true

    def self.most_popular
        # This code only allows one console object to be shown, but multiple consoles can have the most number of users
        # console_id = ConsoleUser.select(:console_id).group(:console_id).order("count(console_id) desc").first.console_id
        # self.find(console_id)

        console_id = ConsoleUser.select(:console_id).group(:console_id).order("count(console_id) desc").first.console_id
        user_count = self.find(console_id).users.count

        cons_arr = []
        self.all.each do |cons|
            if cons.users.count == user_count
                cons_arr << cons
            end
        end

        cons_arr
    end
end
