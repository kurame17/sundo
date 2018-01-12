class CreateRentPosts < ActiveRecord::Migration
  def change
    create_table :rent_posts do |t|

      t.timestamps null: false
    end
  end
end
