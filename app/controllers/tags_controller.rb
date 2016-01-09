class TagsController < ApplicationController
  before_filter :authenticate_user!
  # GET /categories
  # GET /categories.json
  def index
    @tags = Tag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @tag = Tag.find_by_permalink(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @tag = Tag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag }
    end
  end

  # GET /categories/1/edit
  def edit
    @tag = Tag.find_by_permalink(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @tag = Tag.new(params[:tag])
    #if post.valid?
     # if @post.save
      #redirect_to new_post_path(:id=> @tag.id)
    #end
    

    respond_to do |format|
      if @tag.save
        format.html { redirect_to @tag, notice: 'Tag was successfully created.' }
        format.json { render json: @tag, status: :created, location: @tag }
      else
        format.html { render action: "new" }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @tag = Tag.find_by_permalink(params[:id])

    respond_to do |format|
      if @tag.update_attributes(params[:tag])
        format.html { redirect_to @tag, notice: 'Tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @tag = Tag.find_by_permalink(params[:id])
    @tag.destroy

    respond_to do |format|
      format.html { redirect_to tags_url }
      format.json { head :no_content }
    end
  end
end
