require 'spec_helper'

describe Employee do
  
  before :each do
    @employee = Employee.new
    @employee.valid?
  end
  
  it "should be valid" do
    @employee.should_not be_valid
  end
  
  it "is invalid without a first_name" do
    @employee.errors.full_messages.should include "First name can't be blank"
  end
  
  it "is invalid without an email" do
    @employee.errors.full_messages.should include "Email can't be blank"
  end
  
end
