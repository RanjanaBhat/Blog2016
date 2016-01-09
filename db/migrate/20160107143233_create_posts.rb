class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.string :name
      t.string :email
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
