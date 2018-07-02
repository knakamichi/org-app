class AddDescrption4ToStuffs < ActiveRecord::Migration[5.1]
  def change
    add_column :stuffs, :description4, :string
  end
end
