class Post < ApplicationRecord
  enum status: {public_post: "Public", private_post: "Private"}

  #Associations
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many_attached :images, dependent: :destroy
  has_rich_text :description

  #Validations
  validates :title, :description, :status, presence: true
end
