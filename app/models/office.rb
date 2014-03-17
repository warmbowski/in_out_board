class Office < ActiveRecord::Base
  
  has_many :employees, -> { order "first_name ASC" }, :foreign_key => 'default_office_id'
  
end
