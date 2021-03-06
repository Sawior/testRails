class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
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

  # GET /posts/1
  # GET /posts/1.json
  def show
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @shouts = Shout.all_shouts
   @posts2 = Post.post_list
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    # druga wersja http://stackoverflow.com/questions/4350499/adding-variable-to-params-in-rails
    # @post= Post.new(params[:page].merge(:user_id => 1, :foo => "bar"))
    @shouts = Shout.all_shouts
   @posts2 = Post.post_list
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @shouts = Shout.all_shouts
    @posts2 = Post.post_list
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
