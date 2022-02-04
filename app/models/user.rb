class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 20 }, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allow alphanumeric" }
  has_many :posts
end
