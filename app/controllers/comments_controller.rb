class CommentsController < ApplicationController
  before_filter :authenticate_user!
  # GET /categories
  # GET /categories.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Comments }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @comment = Comment.find_by_permalink(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /categories/1/edit
  def edit
    @comment = Comment.find_by_permalink(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @post=Post.find_by_permalink(params[:post_id])
    @comment = Comment.new(params[:comment])
    #if post.valid?
     # if @post.save
      #redirect_to new_post_path(:id=> @comment.id)
    #end
    puts "----------#{@post.category}"

    respond_to do |format|
      if @comment.save
        format.html { redirect_to category_post_path(@post.category,@post), notice: 'Comment was successfully created.' }
        format.json { render json: @post, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @comment = Comment.find_by_permalink(params[:id])
    @post=@comment.post
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @post, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @comment = Comment.find_by_permalink(params[:id])
    @post = Post.find(params[:post_id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to category_post_path(@post.category,@post) }
      format.json { head :no_content }
    end
  end
end
