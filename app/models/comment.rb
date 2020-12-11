class Comment < ApplicationRecord
  
  # Associations
  has_ancestry
  belongs_to :post
  belongs_to :commenter, foreign_key: 'commenter_id', class_name: "User"
  has_rich_text :description

  validates :description, presence: true
end
