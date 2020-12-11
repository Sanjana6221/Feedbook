class RemoveCommentorNameFromComment < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :commenter_name
    add_column :comments, :commenter_id, :bigint
  end
end
