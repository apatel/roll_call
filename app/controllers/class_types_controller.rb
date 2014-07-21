class ClassTypesController < ApplicationController
  load_and_authorize_resource
  
  def index
    @class_types = ClassType.all
  end
  
  def show
    
  end  
  
  def new
    @class_type = ClassType.new
  end
  
  def edit
    
  end
  
  def create
    @class_type = ClassType.new(class_type_params)
    
    respond_to do |format|
      if @class_type.save
        format.html { redirect_to root_url, notice: 'class_type was successfully created.' }
        format.json { render json: @class_type, status: :created, author: @class_type }
      else
        format.html { render action: "new" }
        format.json { render json: @class_type.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @class_type = ClassType.find(params[:id])
    
    respond_to do |format|
      if @class_type.update_attributes(params[:class_type])
        format.html { redirect_to root_url, notice: 'class_type was successfully updated.' }
        format.json { head :no_content }  
      else
        format.html { render action: "edit" }
        format.json { render json: @class_type.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @class_type = ClassType.find(params[:id])
    @class_type.destroy
    
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_type
      @class_type = ClassType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_type_params
      params.require(:class_type).permit!
    end
end
