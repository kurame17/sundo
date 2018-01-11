class AuctionPostsController < ApplicationController
  before_action :set_auction_post, only: [:show, :edit, :update, :destroy]

  # GET /auction_posts
  # GET /auction_posts.json
  def index
    @auction_posts = AuctionPost.all
  end

  # GET /auction_posts/1
  # GET /auction_posts/1.json
  def show
  end

  # GET /auction_posts/new
  def new
    @auction_post = AuctionPost.new
  end

  # GET /auction_posts/1/edit
  def edit
  end

  # POST /auction_posts
  # POST /auction_posts.json
  def create
    @auction_post = AuctionPost.new(auction_post_params)

    respond_to do |format|
      if @auction_post.save
        format.html { redirect_to @auction_post, notice: 'Auction post was successfully created.' }
        format.json { render :show, status: :created, location: @auction_post }
      else
        format.html { render :new }
        format.json { render json: @auction_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auction_posts/1
  # PATCH/PUT /auction_posts/1.json
  def update
    respond_to do |format|
      if @auction_post.update(auction_post_params)
        format.html { redirect_to @auction_post, notice: 'Auction post was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction_post }
      else
        format.html { render :edit }
        format.json { render json: @auction_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auction_posts/1
  # DELETE /auction_posts/1.json
  def destroy
    @auction_post.destroy
    respond_to do |format|
      format.html { redirect_to auction_posts_url, notice: 'Auction post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction_post
      @auction_post = AuctionPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auction_post_params
      params.require(:auction_post).permit(:title, :string, :content, :text, :username, :string)
    end
end
