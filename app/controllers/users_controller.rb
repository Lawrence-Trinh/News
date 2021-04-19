class UsersController < ApplicationController
  before_action :authorize, except: [:show, :new, :create]
  before_action :set_last_active, if: -> { logged_in? && (current_user.last_active.nil? || Time.now > current_user.last_active) }
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC")
    @comments = @user.comments.order("created_at DESC")
  end  
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to News+"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update_user_profile
    @user = User.find(params[:id])
    if @user.update(user_personal_info_params)
      flash[:success] = "Personal Information has been updated"
      redirect_to user_path
    else
      flash[:danger] = @user.errors.full_messages.to_sentence
      render 'settings'
    end
  end

  def update_user_password
    @user = User.find(params[:id])
    if @user.update(user_password_params)
      redirect_to user_path
    else
      flash[:danger] = @user.errors.full_messages.to_sentence
      render 'settings'
    end
  end

  def update_user_avatar
    @user = User.find(params[:id])
    if @user.update(user_avatar_params)
      flash[:success] = "Avatar has been updated"
      redirect_to user_path
    else
      flash[:danger] = @user.errors.full_messages.to_sentence
      render 'settings'
    end
  end

  def update_user_verification
    @user = User.find(params[:id])
    if @user.update(user_verification_params)
      flash[:success] = "Verification has been updated"
      redirect_to user_path
    else
      flash[:danger] = @user.errors.full_messages.to_sentence
      render 'settings'
    end
  end

  def show_posts
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC")
    unless @user == @current_user
      flash[:danger] = "You don't have access this page!"
      redirect_to user_path
      return
    end
    render 'posts'
  end

  def show_comments
    @user = User.find(params[:id])
    @comments = @user.comments.order("created_at DESC")
    unless @user == @current_user
      flash[:danger] = "You don't have access to this page!"
      redirect_to user_path
      return
    end
    render 'comments'
  end

  def show_mentions
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC")
    @comments = Comment.all.where(post_id: @posts).order("created_at DESC")
    unless @user == @current_user
      flash[:danger] = "You don't have access to this page!"
      redirect_to user_path
      return
    end
    render 'mentions'
  end

  def user_settings
    @user = User.find(params[:id])
    unless @user == @current_user
      flash[:danger] = "You don't have access to this page!"
      redirect_to user_path
      return
    end
    render 'settings'
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :mobile)
    end

    def user_personal_info_params
      params.require(:user).permit(:name, :email, :mobile, 
                                   :city, :personal_bio)
    end

    def user_password_params
      params.require(:user).permit(:password, :password_confirmation)
    end

    def user_avatar_params
      params.require(:user).permit(:avatar)
    end

    def user_verification_params
      params.require(:user).permit(:typeOfCard, :cardNumber, :verification)
    end
end
