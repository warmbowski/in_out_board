class Office < ActiveRecord::Base
  
  has_many :employees, :foreign_key => 'default_office_id'
  
end
