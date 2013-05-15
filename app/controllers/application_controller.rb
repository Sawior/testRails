class ApplicationController < ActionController::Base
  protect_from_forgery 
  @shouts = Shout.all_shouts
  @posts2 = Post.post_list 
end
