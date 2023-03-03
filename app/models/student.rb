class Student < ApplicationRecord
  belongs_to :user
  has_many :name_games
  has_many :games, through: :name_games
end
