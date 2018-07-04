class ChangeUseridtoOwnerid < ActiveRecord::Migration[5.1]
  def up
    rename_column :ownerships, :user_id, :owner_id
  end
  def down
    rename_column :ownerships, :owner_id, :user_id
  end

end
