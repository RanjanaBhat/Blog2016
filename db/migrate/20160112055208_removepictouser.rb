class Removepictouser < ActiveRecord::Migration
  	def self.up
		remove_column :users, :attach_file_name
		remove_column :users, :attach_content_type
		remove_column :users, :attach_file_size
		remove_column :users, :attach_updated_at
	end
  

  
end
