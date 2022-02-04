class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 64 }
  validates :url, presence: true, length: { minimum: 5, maximum: 256 }
  belongs_to :user
end
