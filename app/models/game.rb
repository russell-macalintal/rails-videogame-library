class Game < ApplicationRecord
    # has_many :game_users
    # has_many :users, through: :game_users

    has_many :plays
    has_many :users, -> { distinct }, through: :plays

    validates :name, uniqueness: true

    def self.most_popular
        most_hours = self.maximum(:hours_played)
        self.where(:hours_played => most_hours)
    end
end
