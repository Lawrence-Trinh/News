class CommentsController < ApplicationController
    before_action :authorize, except: [:index]
    before_action :find_commentable
    before_action :set_last_active, if: -> { logged_in? && (current_user.last_active.nil? || Time.now > current_user.last_active) }

    def index
        @comments = Comment.all
    end

    def create
        @comment = @commentable.comments.new(comment_params)
        @post = Post.find_by_id(Comment.find_by_id(params[:comment_id]).post_id) if params[:comment_id]
        @post = Post.find_by_id(params[:post_id]) if params[:post_id]
        @comment.post_id = @post.id
        @comment.user_id = current_user.id if current_user

        if @comment.save
            flash[:success] = "Successfully replied."
            redirect_to @post
        else
            flash[:danger] = "Failed to reply."
            redirect_to @post
        end
    end

    def destroy
        @comment = current_user.comments.find(params[:id])
        @post = Post.find_by_id(@comment.post_id)
        @comment.update_attribute(:comment, "[Removed]")
        redirect_to request.referrer
    end

    private
        def comment_params
            params.require(:comment).permit(:comment)
        end

        def find_commentable
            @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
            @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
        end
end
