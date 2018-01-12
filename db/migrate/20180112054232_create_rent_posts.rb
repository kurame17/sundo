class CreateRentPosts < ActiveRecord::Migration
  def change
    create_table :rent_posts do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :img
      t.timestamps null: false
    end
  end
end
