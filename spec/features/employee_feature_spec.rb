require 'spec_helper'


feature "Default home page" do
  scenario "viewing the directory page" do
    Office.create 
    visit root_path
    expect(page).to have_text("In the Office")
  end
end


describe Employee, type: :feature do
  context "Creating new employee" do
    it "should let the user know about missing first name" do
      visit new_employee_path
      fill_in 'First name', :with => "Paul"
      fill_in 'Email', :with => "hello@there.io"
      click_button "Create Employee"
      page.should have_content "First name can't be blank"
    end
  end
end
