require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
  end
 
  test "should get login page" do
    get login_path
    assert_response :success
    assert_template 'sessions/new'
  end

  test "should sign in user" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: @user.email, password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
  end

  test "should not sign in user" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: "fake@email@.com", password: 'password' } }
    assert_not is_logged_in?
    assert flash[:danger]
    assert_template 'sessions/new'
  end

  test "should sign in user and sign out" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: @user.email, password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
  end

end
