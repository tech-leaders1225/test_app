require "application_system_test_case"

class AdminUserPostsTest < ApplicationSystemTestCase
  setup do
    @admin_user_post = admin_user_posts(:one)
  end

  test "visiting the index" do
    visit admin_user_posts_url
    assert_selector "h1", text: "Admin User Posts"
  end

  test "creating a Admin user post" do
    visit admin_user_posts_url
    click_on "New Admin User Post"

    fill_in "Body", with: @admin_user_post.body
    fill_in "Title", with: @admin_user_post.title
    click_on "Create Admin user post"

    assert_text "Admin user post was successfully created"
    click_on "Back"
  end

  test "updating a Admin user post" do
    visit admin_user_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @admin_user_post.body
    fill_in "Title", with: @admin_user_post.title
    click_on "Update Admin user post"

    assert_text "Admin user post was successfully updated"
    click_on "Back"
  end

  test "destroying a Admin user post" do
    visit admin_user_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admin user post was successfully destroyed"
  end
end
