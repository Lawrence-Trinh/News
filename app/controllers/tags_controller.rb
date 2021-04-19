class TagsController < ApplicationController
  
  def show
    @tag = Tag.find(params[:id])
    @posts = Post.all.where("tag_id" => params[:id]).order("created_at DESC")
    @top_five_posts = Post.all.where.not("title" => "[Removed]").order('view_counter DESC').first(5)
    @recent_members = User.order("last_active DESC").limit(12)
  end
end
