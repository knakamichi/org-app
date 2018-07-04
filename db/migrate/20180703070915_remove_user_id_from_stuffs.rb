class RemoveUserIdFromStuffs < ActiveRecord::Migration[5.1]
  def change
    remove_column :stuffs, :user_id, :integer
  end
end
