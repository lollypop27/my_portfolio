require 'spec_helper'

  describe 'portfolio', type: :feature do
    before do
      visit '/portfolio.html'
  end

  it 'displays the correct heading' do
    expect(page).to have_selector('h1', text: 'My World of Coding and Design')
  end

end
