class Post < ApplicationRecord
  enum privacy: [:public, :private]

  #Associations
  has_many :comments, dependent: :destroy

  #Validations
  validates :title, :description, :privacy, presence: true
  validates :description, length: { minimum: 20 }
end
