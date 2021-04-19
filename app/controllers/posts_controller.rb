class PostsController < ApplicationController
    # Users are required to login for all tasks besides index and show
    before_action :authorize, except: [:index, :show, :search_post, :search_tag]
    before_action :set_last_active, if: -> { logged_in? && (current_user.last_active.nil? || Time.now > current_user.last_active) }

  def index
    @posts = Post.all.where("created_at >= ?", 1.month.ago.utc).order("created_at DESC")
    @users = User.all
    @tags = Tag.all
    @top_five_posts = Post.all.where.not("title" => "[Removed]").order('view_counter DESC').first(5)
    @recent_members = User.order("last_active DESC").limit(12)
  end

  def show
    @post = Post.find(params[:id])
    @users = User.all
    @tag = @post.tag
    @post.update_column('view_counter', @post.view_counter + 1) if @post.present?
    @tag.update_column('view_counter', @tag.view_counter + 1) if @tag.present?
    @top_five_posts = Post.all.where.not("title" => "[Removed]").order('view_counter DESC').first(5)
    @recent_members = User.order("last_active DESC").limit(12)
  end

  def new
    @post = Post.new
    @tags = Tag.all.order("id").where.not(name: "News").map{|tag| [ tag.name, tag.id ] }.insert(0, "")
  end

  def create
    @post = current_user.posts.build(post_params)
    if params[:tag_id].nil? || params[:tag_id] == ""
        @post.tag_id = Tag.where(name: "News").first.id
    else
        @post.tag_id = params[:tag_id]
    end

    if @post.save
        redirect_to @post
    else
        render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
    @tags = Tag.all.order("id").where.not(name: "News").map{|tag| [ tag.name, tag.id ] }.insert(0, "")
  end

  def update
    @post = Post.find(params[:id])
    if params[:tag_id].nil? || params[:tag_id] == ""
      @post.tag_id = Tag.where(name: "News").first.id
    else
      @post.tag_id = params[:tag_id]
    end
    
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
   end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.update_attributes(:title => "[Removed]", :content => "[Removed]")
    redirect_to request.referrer
  end

  def search_tag
    @tags = Tag.all.map{|tag| [ tag.name, tag.id ] }
    @top_five_posts = Post.all.order('view_counter DESC').first(5)
    @recent_members = User.all.limit(12)
    if params[:search_tag].blank?
        redirect_to root_path
    else
        @parameter = params[:search_tag]
        @search = Post.where(tag_id: @parameter).order("created_at DESC")
    end
  end

  def search_post
    @tags = Tag.all.map{|tag| [ tag.name, tag.id ] }
    @top_five_posts = Post.all.order('view_counter DESC').first(5)
    @recent_members = User.all.limit(12)
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @search = Post.all.where("lower(title) LIKE :search", search: "%#{@parameter}%")
    end 
  end

 private

  def post_params
    params.require(:post).permit(:title, :content, :tag_id)
  end

end
