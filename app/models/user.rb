class User < ApplicationRecord
  VALID_EMAIL = /\A^[\w][\w+\-.]+[\w]@gmail.com+\z/i

  enum role: {admin: 0, manager: 1, guest: 2}

  validates :username, presence: true, length: {maximum: 30}
  validates :email, presence: true, length: {maximum: 220},
   format: {with: VALID_EMAIL}, uniqueness: true

end
