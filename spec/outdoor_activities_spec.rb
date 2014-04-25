require 'spec_helper'

feature 'CRUDing Outdoor Activities' do
  scenario 'Users can create, update and delete an activity' do
    visit '/activities'
    click_on 'Add an Activity'
    fill_in 'activity', with: 'kayaking'
    click_on 'Add'
    expect(page).to have_content('kayaking')
    click_on 'Edit'
    fill_in 'edit_activity', with: 'camping'
    click_on 'Update'
    expect(page).to have_content('camping')
    click_on 'Delete'
    expect(page).to_not have_content('camping')
  end
end