class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { minimum: 50 }

  belongs_to :user
  has_many :comments
end
