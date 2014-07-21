class PackagesController < ApplicationController
  load_and_authorize_resource
  
  def index
    @packages = Package.all
    @individuals = Individual.all
  end
  
  def show
    
  end  
  
  def new
    @package = Package.new
  end
  
  def edit
    
  end
  
  def create
    @package = Package.new(package_params)
    
    respond_to do |format|
      if @package.save
        format.html { redirect_to root_url, notice: 'package was successfully created.' }
        format.json { render json: @package, status: :created, author: @package }
      else
        format.html { render action: "new" }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @package = Package.find(params[:id])
    
    respond_to do |format|
      if @package.update_attributes(params[:package])
        format.html { redirect_to root_url, notice: 'package was successfully updated.' }
        format.json { head :no_content }  
      else
        format.html { render action: "edit" }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @package = Package.find(params[:id])
    @package.destroy
    
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_params
      params.require(:package).permit!
    end
end
