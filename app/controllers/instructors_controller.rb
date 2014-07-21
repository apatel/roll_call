class InstructorsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @instructors = Instructor.all
  end
  
  def show
    
  end  
  
  def new
    @instructor = Instructor.new
  end
  
  def edit
    
  end
  
  def create
    @instructor = Instructor.new(instructor_params)
    
    respond_to do |format|
      if @instructor.save
        format.html { redirect_to root_url, notice: 'instructor was successfully created.' }
        format.json { render json: @instructor, status: :created, author: @instructor }
      else
        format.html { render action: "new" }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @instructor = Instructor.find(params[:id])
    
    respond_to do |format|
      if @instructor.update_attributes(params[:instructor])
        format.html { redirect_to root_url, notice: 'instructor was successfully updated.' }
        format.json { head :no_content }  
      else
        format.html { render action: "edit" }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructor_params
      params.require(:instructor).permit!
    end
end
