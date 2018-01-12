require 'test_helper'

class AuctionPostsControllerTest < ActionController::TestCase
  setup do
    @auction_post = auction_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auction_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auction_post" do
    assert_difference('AuctionPost.count') do
      post :create, auction_post: {  }
    end

    assert_redirected_to auction_post_path(assigns(:auction_post))
  end

  test "should show auction_post" do
    get :show, id: @auction_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auction_post
    assert_response :success
  end

  test "should update auction_post" do
    patch :update, id: @auction_post, auction_post: {  }
    assert_redirected_to auction_post_path(assigns(:auction_post))
  end

  test "should destroy auction_post" do
    assert_difference('AuctionPost.count', -1) do
      delete :destroy, id: @auction_post
    end

    assert_redirected_to auction_posts_path
  end
end
