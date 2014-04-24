require 'spec_helper'

feature 'CRUDing Outdoor Activities' do
  scenario 'Users can create, update and delete an activity' do
    visit '/'
    click_on 'Add an Activity'
    fill_in 'activity', with: 'kayaking'
    click_on 'Add'
    expect(page).to have_content('kayaking')
  end
end