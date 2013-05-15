class UsersController < ApplicationController
  def index
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    @users = User.all
    respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @users }
    end
  end
  
  def show
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
end