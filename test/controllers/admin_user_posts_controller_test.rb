require 'test_helper'

class AdminUserPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user_post = admin_user_posts(:one)
  end

  test "should get index" do
    get admin_user_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_user_post_url
    assert_response :success
  end

  test "should create admin_user_post" do
    assert_difference('AdminUserPost.count') do
      post admin_user_posts_url, params: { admin_user_post: { body: @admin_user_post.body, title: @admin_user_post.title } }
    end

    assert_redirected_to admin_user_post_url(AdminUserPost.last)
  end

  test "should show admin_user_post" do
    get admin_user_post_url(@admin_user_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_user_post_url(@admin_user_post)
    assert_response :success
  end

  test "should update admin_user_post" do
    patch admin_user_post_url(@admin_user_post), params: { admin_user_post: { body: @admin_user_post.body, title: @admin_user_post.title } }
    assert_redirected_to admin_user_post_url(@admin_user_post)
  end

  test "should destroy admin_user_post" do
    assert_difference('AdminUserPost.count', -1) do
      delete admin_user_post_url(@admin_user_post)
    end

    assert_redirected_to admin_user_posts_url
  end
end
