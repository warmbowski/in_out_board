class Employee < ActiveRecord::Base
  
  has_many :statuses
  belongs_to :office, foreign_key: 'default_office_id'
  
  def self.nyc 
    where(default_office_id: '1')
  end
  
  def self.seattle
    where(default_office_id: '2')
  end
  
  
end
