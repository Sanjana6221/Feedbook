class Post < ApplicationRecord
  enum privacy: [:public, :private]
  validates :title, :description, :privacy, presence: true
  validates :description, length: { minimum: 20 }
end
