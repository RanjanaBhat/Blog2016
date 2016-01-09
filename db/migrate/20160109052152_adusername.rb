class Adusername < ActiveRecord::Migration
  def up
  	add_column :users, :name, :string
  	add_index :users, :name
  end

  def down
  	remove_column :users, :name
  end
end
