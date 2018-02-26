require 'rails_helper'

RSpec.feature "Users", type: :feature do
  describe "User", :type => :feature do
    it "create new user" do
      visit '/signup'
      within('form') do
        fill_in 'user_username', with: 'Ali'
        fill_in 'user_password', with: 'ali'
      end
      click_button 'Submit'
      expect(page).to have_content 'User successfully created.'
    end
  end
end
