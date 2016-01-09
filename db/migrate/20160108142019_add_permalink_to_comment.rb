class AddPermalinkToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :permalink, :string
    add_index :comments, :permalink
  end
  def self.down
    remove_column :comments, :permalink
  end
end