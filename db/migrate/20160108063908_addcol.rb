class Addcol < ActiveRecord::Migration
  def up
  	add_column :posts, :user_id, :integer
  	add_index :posts, :user_id
  end

  def down
  	remove_column :posts, :user_id
  end
end
