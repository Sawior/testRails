class ShoutsController < ApplicationController
  def index
    @shouts = Shout.all_shouts
  end
  
  def create
    @shout = Shout.new(params[:shout])
    if @shout.save
      flash[:notice] = 'Thanks for shouting!'
      redirect_to :action => 'index'
    else
      render :action => 'index'
    end
   end 
end
