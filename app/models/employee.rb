class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :statuses, dependent: :delete_all
  belongs_to :office, foreign_key: 'default_office_id'
  
  validates_presence_of :email#, :first_name
  
  after_create :add_default_status
  # after_destroy :remove_all_statuses
  
  def add_default_status
    first_office_id=Office.first.id
    return_tomorrow=(Date.today + 1.day) + 8.hours
    self.statuses.create!(in_out: false, on_off: false, return: return_tomorrow)
    self.update_attribute(:default_office_id, first_office_id)
  end
  
  # def remove_all_statuses
  #   self.statuses.delete_all
  # end

  
  def full_name
    "#{first_name} #{last_name}"
  end
  
end
