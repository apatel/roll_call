class LocationsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @locations = Location.all
  end
  
  def show
    
  end  
  
  def new
    @location = Location.new
  end
  
  def edit
    
  end
  
  def create
    @location = Location.new(location_params)
    
    respond_to do |format|
      if @location.save
        format.html { redirect_to root_url, notice: 'location was successfully created.' }
        format.json { render json: @location, status: :created, author: @location }
      else
        format.html { render action: "new" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @location = Location.find(params[:id])
    
    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to root_url, notice: 'location was successfully updated.' }
        format.json { head :no_content }  
      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit!
    end
end
