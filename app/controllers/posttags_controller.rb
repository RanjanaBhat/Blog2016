class PosttagsController < ApplicationController
  before_filter :authenticate_user!
  # GET /categories
  # GET /categories.json
  def index
    @posttags = Posttag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posttags }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @posttag = Posttag.find_by_permalink(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @posttag }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @posttag = Posttag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @posttag }
    end
  end

  # GET /categories/1/edit
  def edit
    @posttag = Posttag.find_by_permalink(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @posttag = Posttag.new(params[:posttag])
    #if post.valid?
     # if @post.save
      #redirect_to new_post_path(:id=> @posttag.id)
    #end
    

    respond_to do |format|
      if @posttag.save
        format.html { redirect_to @posttag, notice: 'Posttag was successfully created.' }
        format.json { render json: @posttag, status: :created, location: @posttag }
      else
        format.html { render action: "new" }
        format.json { render json: @posttag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @posttag = Posttag.find_by_permalink(params[:id])

    respond_to do |format|
      if @posttag.update_attributes(params[:posttag])
        format.html { redirect_to @posttag, notice: 'Posttag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @posttag.errors, status: :unprocessable_entity }
      end
    end
  
end
