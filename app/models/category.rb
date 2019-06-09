class Category < ApplicationRecord
  has_many :movie_types, dependent: :destroy
end
