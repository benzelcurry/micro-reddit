class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { in: 3..200 }
  validates :body, presence: true, length: { in: 3..20000 }
end
