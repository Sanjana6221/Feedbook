class Comment < ApplicationRecord
  
  # Associations
  belongs_to :post
  has_rich_text :description

  validates :commenter_name, :description, presence: true
end
