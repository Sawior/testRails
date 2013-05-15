class SessionsController < ApplicationController
  def create
    guest = Guest.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end
end