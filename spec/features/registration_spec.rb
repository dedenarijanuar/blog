require 'spec_helper'

describe "Registration" do
  it "redirect to dashboard if registration successful" do
    visit new_user_registration_path
    fill_in "Email", with: "arifirmanto@gmail.com"
    fill_in "Password", with: "secret123"
    fill_in "Password confirmation", with: "secret123"
    click_button "Sign up"
    current_path.should eq(root_path)
    page.should have_content "Welcome! You have signed up successfully."
  end
end

