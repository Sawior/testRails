class SessionsController < ApplicationController
  def create
    guest = Guest.from_omniauth(env["omniauth.auth"])
    session[:guest_id] = guest.id
    redirect_to root_url
  end
end