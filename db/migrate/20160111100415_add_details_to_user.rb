class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
    add_column :users, :country, :string
    add_column :users, :fav_color, :string
    add_column :users, :cur_city, :string
  end
end
