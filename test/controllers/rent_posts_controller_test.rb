require 'test_helper'

class RentPostsControllerTest < ActionController::TestCase
  setup do
    @rent_post = rent_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rent_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rent_post" do
    assert_difference('RentPost.count') do
      post :create, rent_post: { content: @rent_post.content, string: @rent_post.string, string: @rent_post.string, text: @rent_post.text, title: @rent_post.title, username: @rent_post.username }
    end

    assert_redirected_to rent_post_path(assigns(:rent_post))
  end

  test "should show rent_post" do
    get :show, id: @rent_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rent_post
    assert_response :success
  end

  test "should update rent_post" do
    patch :update, id: @rent_post, rent_post: { content: @rent_post.content, string: @rent_post.string, string: @rent_post.string, text: @rent_post.text, title: @rent_post.title, username: @rent_post.username }
    assert_redirected_to rent_post_path(assigns(:rent_post))
  end

  test "should destroy rent_post" do
    assert_difference('RentPost.count', -1) do
      delete :destroy, id: @rent_post
    end

    assert_redirected_to rent_posts_path
  end
end
