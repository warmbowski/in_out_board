class OfficeDirectoriesController < ApplicationController
  
  def index
    @all_offices = Office.all
  end
  
end
