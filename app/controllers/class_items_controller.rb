class ClassItemsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @class_items = ClassItem.all
  end
  
  def show
    
  end  
  
  def new
    @class_item = ClassItem.new
  end
  
  def edit
    
  end
  
  def create
    @class_item = ClassItem.new(class_item_params)
    
    respond_to do |format|
      if @class_item.save
        format.html { redirect_to root_url, notice: 'class_item was successfully created.' }
        format.json { render json: @class_item, status: :created, author: @class_item }
      else
        format.html { render action: "new" }
        format.json { render json: @class_item.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @class_item = ClassItem.find(params[:id])
    
    respond_to do |format|
      if @class_item.update_attributes(params[:class_item])
        format.html { redirect_to root_url, notice: 'class_item was successfully updated.' }
        format.json { head :no_content }  
      else
        format.html { render action: "edit" }
        format.json { render json: @class_item.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @class_item = ClassItem.find(params[:id])
    @class_item.destroy
    
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_item
      @class_item = ClassItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_item_params
      params.require(:class_item).permit!
    end
end
