class Student < ApplicationRecord
  belongs_to :user
  has_many :name_games
  has_many :games, through: :name_games
  has_many :parents
  accepts_nested_attributes_for :parents
end
