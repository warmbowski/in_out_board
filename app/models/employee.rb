class Employee < ActiveRecord::Base
  
  has_many :statuses
  belongs_to :office
  
end
