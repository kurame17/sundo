json.extract! auction_post, :id, :title, :string, :content, :text, :username, :string, :created_at, :updated_at
json.url auction_post_url(auction_post, format: :json)
