require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:michael)
    @post = posts(:one)
  end

  def login
    get login_path
    post login_path, params: { session: { email: @user.email, password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
  end

  test "should redirect to login for new post" do
    get new_post_path
    assert_redirected_to login_path
  end

  test "should get new post after login " do
    login
    get new_post_path
    assert_template "posts/new"
  end

  
end
