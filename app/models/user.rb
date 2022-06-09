class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :email, uniqueness: true, presence: true
  validates :username, presence: true, length: { in: 6..20 }

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
