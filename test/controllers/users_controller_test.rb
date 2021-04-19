require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  def login
    get login_path
    post login_path, params: { session: { email: @user.email, password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
  end

  def login_settings_page
    login
    get user_settings_path
    assert_template 'users/settings'
  end
  
  test "should get signup page / create" do
    get users_new_url
    assert_template 'users/new'
  end

  test "should not create new user with invalid credentials" do
    get users_new_url
    assert_template 'users/new'
    post signup_path , params: {user: {name: "", email: "", password: "", password_confirmation: "", mobile: ""}}
    assert_template 'users/new'
  end 

  test "should login and show profile" do
    login
    assert_template 'users/_myprofile'
  end

  test "should get settings page" do
    login
    login_settings_page
  end

  test "should change user details" do 
    login_settings_page
    patch update_user_profile_path, params: {user: {name: "Mike", email: "mike@example.com", mobile: "01234567890"}}
    assert_redirected_to @user
    assert_not flash.empty?
  end

  test "should not change user details for empty fields" do 
    login_settings_page
    patch update_user_profile_path, params: {user: {name: "", email: @user.email, mobile: @user.mobile}}
    assert_template 'users/settings'
    assert flash[:danger]

  end

  test "should not change user password on mismatch password" do 
    login_settings_page
    patch update_user_password_path, params: {user: {password: "oldpass123", password_confirmation:"newpass123"}}
    assert_template 'users/settings'
    assert flash[:danger]
  end

  test "should change password on confirmed password" do 
    login_settings_page
    patch update_user_password_path, params: {user: {password: "newpass123", password_confirmation:"newpass123"}}
    assert_redirected_to @user
    assert flash[:success]
  end

  test "should verify user with card and details" do 
    login_settings_page
    patch update_user_verification_path, params: {user: {typeOfCard: "Student ID", cardNuber: 12345}}
    assert_redirected_to @user
    assert flash[:success]
  end

end
