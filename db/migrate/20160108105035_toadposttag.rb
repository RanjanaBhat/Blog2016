class Toadposttag < ActiveRecord::Migration
  def up
  	add_column :posttags, :post_id, :integer
  	add_index :posttags, :post_id
  end

  def down
  	remove_column :posttags, :post_id
  end
end
