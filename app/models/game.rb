class Game < ApplicationRecord
    has_many :name_games
    has_many :students, through: :name_games
end
