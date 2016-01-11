class PostsController < ApplicationController
  respond_to :html, :xml, :json
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @post = Post.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show

    @post = Post.find_by_permalink(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
    @category=Category.find_by_permalink(params[:category_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find_by_permalink(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    #@category=Category.find(params[:category_id])
   # @post = @category.posts.build(params[:post])
    @post = Post.new(params[:post])
   if @post.valid?
   @post.save
   redirect_to category_post_path(@post.category , @post)
 else
  respond_with(@post)
 end

    # respond_to do |format|
    #   if @post.save
    #     format.html { redirect_to @category, notice: 'Post was successfully created.' }
    #     format.json { render json: @category, status: :created, location: @post }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @category.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find_by_permalink(params[:id])
    @category = @post.category

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @category, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find_by_permalink(params[:id])
    @category = Category.find_by_permalink(params[:category_id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to @category, notice: 'Post was successfully deleted!' }
      format.json { head :no_content }
    end
  end
end
