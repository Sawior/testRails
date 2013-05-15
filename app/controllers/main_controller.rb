class MainController < ApplicationController
  def index
   @shouts = Shout.all_shouts
   @posts2 = Post.post_list
   @posts = Post.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
      format.atom
    end
  end
end
