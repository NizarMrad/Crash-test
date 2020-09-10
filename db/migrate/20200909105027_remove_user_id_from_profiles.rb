class RemoveUserIdFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :user_id, :integer
    add_reference :profiles, :user, foreign_key: true
  end
end