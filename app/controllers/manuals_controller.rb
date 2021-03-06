class ManualsController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:index,:show]
  
  # GET /manuals
  # GET /manuals.json
  def index
    #@manuals = Manual.all
    @manuals = Category.find_by_name(params[:cat]).manuals if params[:cat]
    @manuals = @manuals.where(['title LIKE ?', "%#{params[:q]}%"]) if params[:q]
    @manuals = @manuals.paginate(params[:page],params[:limit])
    #@manuals = Manual.paginate(params[:page],params[:limit])
    #@manuals = Manual.search(params[:q])
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manuals }
    end
  end

  # GET /manuals/1
  # GET /manuals/1.json
  def show
    @manual = Manual.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manual }
    end
  end

  # GET /manuals/new
  # GET /manuals/new.json
  def new
    @manual = Manual.new
    1.times {@manual.steps.build}
    1.times {@manual.materials.build}
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manual }
    end
  end

  # GET /manuals/1/edit
  def edit
    @manual = Manual.find(params[:id])
  end

  # POST /manuals
  # POST /manuals.json
  def create
    @manual = Manual.new(params[:manual])
    @manual.user_id = current_user.id
    
    
    respond_to do |format|
      if @manual.save
        #format.html { redirect_to @manual, notice: 'Manual was successfully created.' }
        #format.json { render json: @manual, status: :created, location: @manual }
        format.js
      else
        #format.html { render action: "new" }
        #format.json { render json: @manual.errors, status: :unprocessable_entity }
        format.js
      end
    end
    
  end

  # PUT /manuals/1
  # PUT /manuals/1.json
  def update
    @manual = Manual.find(params[:id])

    respond_to do |format|
      if @manual.update_attributes(params[:manual])
        format.html { redirect_to @manual, notice: 'Manual was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @manual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manuals/1
  # DELETE /manuals/1.json
  def destroy
    @manual = Manual.find(params[:id])
    @manual.destroy

    respond_to do |format|
      format.html { redirect_to manuals_url }
      format.json { head :no_content }
    end
  end
  
  # Search /manuals?search=[:search]
  # Not finish

  
  
  
end
