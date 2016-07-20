require 'spec_helper'

  describe 'portfolio', type: :feature do
    before do
      visit '/portfolio.html'
  end

  it 'displays the correct heading' do
    expect(page).to have_selector('h1', text: 'My World of Coding and Design')
  end

  it 'displays My First Website on the page' do
    visit '/portfolio.html'
    expect(page).to have_content 'My First Website'
  end

  it 'displays ATM Challenge on the page' do
    visit '/portfolio.html'
    expect(page).to have_content 'ATM Challenge'
  end

end
