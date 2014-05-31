require 'spec_helper'


describe "Logins" do
  include Warden::Test::Helpers

  it "redirect to dashboard if login successful" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    current_path.should eq(root_path)
    page.should have_content "Signed in successfully."
  end

  it "should logout successfully" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link "Sign out"
    page.should have_content "Signed out successfully."
  end

  it "should login through facebook successfully" do
    visit root_path
    click_link 'Sign in with facebook'
    page.should have_content "Signed in successfully."
  end
end

