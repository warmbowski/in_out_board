class OfficeDirectoriesController < ApplicationController
  
  def index
    @nyc_full_names = Employee.nyc.pluck(:first_name, :last_name)
    @seattle_full_names = Employee.seattle.pluck(:first_name, :last_name)
  end
  
end
