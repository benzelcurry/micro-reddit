class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, uniqueness: true, length: { in: 3..24 }
  validates :password, presence: true, length: { in: 8..64 }
end
