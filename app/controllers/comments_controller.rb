class CommentsController < ApplicationController

  before_action :set_post, only: [:new, :create, :destroy]

  def new
    @comment = @post.comments.new(:parent_id => params[:parent_id])
  end

  def create
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      render :new
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    authorize @comment
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

    def set_post
      @post = Post.find(params[:post_id])
    end

    def comment_params
      params.require(:comment).permit(:commenter_id, :description, :parent_id)
    end
  #End of private
end
