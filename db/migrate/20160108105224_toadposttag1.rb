class Toadposttag1 < ActiveRecord::Migration
  def up
  	add_column :posttags, :tag_id, :integer
  	add_index :posttags, :tag_id
  end

  def down
  	remove_column :posttags, :tag_id
  end
end
