class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { in: 3..200 }
  validates :body, presence: true, length: { in: 3..20000 }
end
