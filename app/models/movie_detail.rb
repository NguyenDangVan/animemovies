class MovieDetail < ApplicationRecord
  enum status_type: [:status, :type]
end
