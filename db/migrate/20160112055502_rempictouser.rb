class Rempictouser < ActiveRecord::Migration
  def self.up
		remove_column :users, :pic_file_name
		remove_column :users, :pic_content_type
		remove_column :users, :pic_file_size
		remove_column :users, :pic_updated_at
	end
end
