class SessionsController < ApplicationController
  def create
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    guest = Guest.from_omniauth(env["omniauth.auth"])
    session[:guest_id] = guest.id
    redirect_to root_url
  end
end