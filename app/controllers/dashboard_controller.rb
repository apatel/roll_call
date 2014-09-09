class DashboardController < ApplicationController
  
  def index
    unless params[:results].nil?
      @results = Client.all(:conditions => ["id in (?)", params[:results].collect{|r| r.to_i}])
    end  
  end  
  
  def packages
    @packages = Package.all
  end  
  
  def find_client
		keywords = params[:keywords]
    @results = Client.all(:conditions => ["lower(first_name) LIKE ? OR lower(last_name) LIKE ? OR phone LIKE ?  OR lower(email) LIKE ?", "%#{keywords}%","%#{keywords}%","%#{keywords}%","%#{keywords}%"])
    redirect_to root_url(:results => @results)
  end  
end
