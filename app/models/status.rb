class Status < ActiveRecord::Base
  
  belongs_to :employee
  belongs_to :status_select
  
  
  # before_create :default_values
  #   def default_values
  #     self.in_out = false
  #     self.on_off = false
  #     self.return = (Date.today + 1.day) + 8.hours 
  #   end
  
end
