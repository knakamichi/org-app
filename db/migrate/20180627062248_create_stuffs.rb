class CreateStuffs < ActiveRecord::Migration[5.1]
  def change
    create_table :stuffs do |t|
      t.string :name
      t.string :sub_name1
      t.string :sub_name2
      t.string :description1
      t.string :description2
      t.string :description3
      t.integer :user_id
      t.string :image

      t.timestamps
    end
    add_index :stuffs, [:user_id, :created_at]
  end
end
