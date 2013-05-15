class CommentsController < ApplicationController
  def create
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    @comment.save
    redirect_to @post
    
  end

  def destroy
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    redirect_to @comment.post
    
    
    
  end
end
