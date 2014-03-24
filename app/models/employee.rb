class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :statuses
  belongs_to :office, foreign_key: 'default_office_id'
  
  validates_presence_of :first_name, :email
  
  def self.nyc 
    where(default_office_id: '1')
  end
  
  def self.seattle
    where(default_office_id: '2')
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
end
