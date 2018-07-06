class CreateStuffs < ActiveRecord::Migration[5.1]
  def change
    create_table :stuffs do |t|
      t.string :name
      t.string :sub_name1
      t.string :sub_name2
      t.string :description1
      t.string :description2
      t.string :description3
      t.string :description4
      t.string :image
    end
    add_index :stuffs, :name
    add_index :stuffs, :sub_name1
    add_index :stuffs, :sub_name2
    add_index :stuffs, :description1
    add_index :stuffs, :description2
    add_index :stuffs, :description3
    add_index :stuffs, :description4
  end
end
