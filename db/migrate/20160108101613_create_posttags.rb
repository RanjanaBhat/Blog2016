class CreatePosttags < ActiveRecord::Migration
  def change
    create_table :posttags do |t|

      t.timestamps
    end
  end
end
