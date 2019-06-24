class SubMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :movie_detail
end
