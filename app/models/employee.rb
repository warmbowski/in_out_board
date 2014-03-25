class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :statuses
  belongs_to :office, foreign_key: 'default_office_id'
  
  validates_presence_of :first_name, :email
  
  after_create :add_default_status
  def add_default_status
    self.statuses.create!(in_out: false, on_off: false, return: (Date.today + 1.day) + 8.hours)
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
end
