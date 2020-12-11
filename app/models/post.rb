class Post < ApplicationRecord
  enum status: [:public_post, :private_post]

  #Associations
  has_many :comments, dependent: :destroy
  has_rich_text :description

  #Validations
  validates :title, :description, :status, presence: true
  validates :description, length: { minimum: 20 }
end
