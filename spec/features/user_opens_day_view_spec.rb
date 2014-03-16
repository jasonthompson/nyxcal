require 'spec_helper'

feature 'User opens single day view for today' do
  scenario 'It displays events in correct time slots' do
    visit '/day/2014/03/15'
    expect(page).to have_content('10:30 Meeting with Zoltar')
    expect(page).to have_content('12:00 lunch with Keop')
  end
end

