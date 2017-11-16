require 'spec_helper'
# require 'rspec/core'
RSpec.feature 'test' do
  scenario "Signing in 1" do
    visit('https://awb-staging.every-pay.com/users/login')
    fill_in "Your email", :with => "kien.hoang@powergatesoftware.com"
    fill_in "Password", :with => "Hoangkien123"
    find("button").click
    expect(page).to have_content("General Statistics")
  end

  scenario "Signing in 2" do
    visit('https://awb-staging.every-pay.com/users/login')
    fill_in "Your email", :with => "kien.hoang@powergatesoftware.com"
    fill_in "Password", :with => "Hoangkien123"
    find("button").click
    expect(page).to have_content("General Statistics")
  end
end
