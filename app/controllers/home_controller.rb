class HomeController < ApplicationController
  @shouts = Shout.all_shouts
   @posts2 = Post.post_list
  def index 
    
  end
end
