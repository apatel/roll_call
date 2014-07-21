class DashboardController < ApplicationController
  
  def index
      
  end  
  
  def packages
    @packages = Package.all
  end  
end
