class IndividualsController < ApplicationController
  load_and_authorize_resource
  
  def index
    
  end
  
  def show
    
  end  
  
  def new
    @individual = Individual.new
  end
  
  def edit
    
  end
  
  def create
    @individual = Individual.new(individual_params)
    
    respond_to do |format|
      if @individual.save
        format.html { redirect_to root_url, notice: 'Individual was successfully created.' }
        format.json { render json: @individual, status: :created, author: @individual }
      else
        format.html { render action: "new" }
        format.json { render json: @individual.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @individual = Individual.find(params[:id])
    
    respond_to do |format|
      if @individual.update_attributes(params[:individual])
        format.html { redirect_to root_url, notice: 'Individual was successfully updated.' }
        format.json { head :no_content }  
      else
        format.html { render action: "edit" }
        format.json { render json: @individual.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @individual = Individual.find(params[:id])
    @individual.destroy
    
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_individual
      @individual = Individual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def individual_params
      params.require(:individual).permit!
    end
end
