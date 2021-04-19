require 'test_helper'

class PasswordResetsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
  end

  def reset_password_page
    get new_password_reset_path
    assert_template 'password_resets/new'
  end

  test "should get new" do
    reset_password_page
  end

  test "should not reset password for a false user" do
    reset_password_page
    post password_resets_path, params: { user: { email: "fakeremail@gmail.com"}}
    assert_redirected_to signup_path
    assert flash[:danger]
  end

  test "should not reset password for empty email" do
    reset_password_page
    post password_resets_path, params: { user: { email: "   "}}
    assert_redirected_to signup_path
    assert flash[:danger]
  end

  test "should not reset password for wrong email format" do
    reset_password_page
    post password_resets_path, params: { user: { email: "faker@email@com.web"}}
    assert_redirected_to signup_path
    assert flash[:danger]
  end

end
