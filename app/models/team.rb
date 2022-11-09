class Team < ActiveRecord::Base
    has_many:players
    has_many :goals , through: :players
    has_many :assists , through: :players

    def goals_of_team
        self.players.sum(:goals)
    end
end