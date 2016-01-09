class AddPermalinkToPosttag < ActiveRecord::Migration
  def self.up
    add_column :posttags, :permalink, :string
    add_index :posttags, :permalink
  end
  def self.down
    remove_column :posttags, :permalink
  end
end