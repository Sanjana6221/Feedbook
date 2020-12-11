class RenamePrivacyFieldToPrivacyType < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :posts, :privacy, :status
  end
end
