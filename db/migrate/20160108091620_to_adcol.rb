class ToAdcol < ActiveRecord::Migration
  def up
  	add_column :comments, :post_id, :integer
  	add_index :comments, :post_id
  end

  def down
  	remove_column :comments, :post_id
  end
end
