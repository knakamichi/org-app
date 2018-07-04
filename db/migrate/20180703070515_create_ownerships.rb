class CreateOwnerships < ActiveRecord::Migration[5.1]
  def change
    create_table :ownerships do |t|
      t.integer :user_id
      t.integer :stuff_id

      t.timestamps
    end
    add_index :ownerships, :user_id
    add_index :ownerships, :stuff_id
    add_index :ownerships, [:user_id, :stuff_id], unique: true
  end
end
