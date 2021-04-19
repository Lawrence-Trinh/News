class PasswordResetsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      user.send_password_reset 
      flash[:success] = 'Email sent with password reset instructions'
      redirect_to login_path
    else 
      flash[:danger] = 'No user was found with that email, please create an account with us first'
      redirect_to signup_path
    end
  end

  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end

  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hour.ago
      flash[:danger] = 'Reset password link has expired'
      redirect_to new_password_reset_path
    elsif @user.update(user_password_params)
      flash[:success] = 'Password has been reset'
      redirect_to login_path
    else
      render :edit
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:password)
    end

    def user_password_params
      params.require(:user).permit(:password, :password_confirmation)
    end
end
