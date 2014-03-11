class OfficeDirectoriesController < ApplicationController
  
  
  def index
    @all_offices = Office.all
    
    @nyc_full_names = Employee.nyc.pluck(:title, :first_name, :last_name)
    @seattle_full_names = Employee.seattle.pluck(:title, :first_name, :last_name)
  end
  
end
