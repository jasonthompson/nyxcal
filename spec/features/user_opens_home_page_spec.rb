require 'spec_helper'
require 'date'

feature 'User opens home page' do
  scenario 'they see the current date on the page' do
    date = Date._strptime(DateTime.now.to_s, "%M %d, %Y")
    visit '/' 
    expect(page).to have_selector('time')
    expect(page).to have_content(date)
  end
end
