class ToRemovecolumn < ActiveRecord::Migration
  def up
  	remove_column :posts, :category_id
  end

  def down
  	add_column :posts, :category_id, :integer
  end
end
