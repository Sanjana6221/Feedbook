class Comment < ApplicationRecord
  belongs_to :post
  validates :commenter_name, :description, presence: true
end
