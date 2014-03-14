require 'spec_helper'

feature 'User opens home page' do
  scenario 'they see the current date on the page' do
    visit '/' 
    expect(page).to have_content('March 14, 2014')
  end
end
