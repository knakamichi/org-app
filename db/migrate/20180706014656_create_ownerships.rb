class CreateOwnerships < ActiveRecord::Migration[5.1]
  def change
    create_table :ownerships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :stuff, index: true
    end
    # ユーザー・道具の組み合わせの被りを防ぐ
    add_index :ownerships, [:user_id, :stuff_id], unique: true
  end
end
