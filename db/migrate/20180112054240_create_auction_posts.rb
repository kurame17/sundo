class CreateAuctionPosts < ActiveRecord::Migration
  def change
    create_table :auction_posts do |t|

      t.timestamps null: false
    end
  end
end
