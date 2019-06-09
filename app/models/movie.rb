class Movie < ApplicationRecord
  has_many :episodes, dependent: :destroy
  has_many :movie_types
  has_one :sub_movie
  has_many :categories, through: :movie_types

  enum status: [:ongoing, :finished]
end
