class Status < ActiveRecord::Base
  
  belongs_to :employee
  belongs_to :status_select
  
end
