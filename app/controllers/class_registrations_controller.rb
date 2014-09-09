class ClassRegistrationsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @class_registrations = ClassRegistration.all
  end
  
  def show
    
  end  
  
  def new
    @class_registration = ClassRegistration.new
  end
  
  def edit
    
  end
  
  def create
    @class_registration = ClassRegistration.new(class_registration_params)
    
    respond_to do |format|
      if @class_registration.save
        format.html { redirect_to root_url, notice: 'class_registration was successfully created.' }
        format.json { render json: @class_registration, status: :created, author: @class_registration }
      else
        format.html { render action: "new" }
        format.json { render json: @class_registration.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @class_registration = ClassRegistration.find(params[:id])
    
    respond_to do |format|
      if @class_registration.update_attributes(params[:class_registration])
        format.html { redirect_to root_url, notice: 'class_registration was successfully updated.' }
        format.json { head :no_content }  
      else
        format.html { render action: "edit" }
        format.json { render json: @class_registration.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @class_registration = ClassRegistration.find(params[:id])
    @class_registration.destroy
    
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_registration
      @class_registration = ClassRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_registration_params
      params.require(:class_registration).permit!
    end
end
