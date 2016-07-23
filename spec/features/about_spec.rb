require 'spec_helper'

  describe 'about', type: :feature do
    before do
      visit '/about.html'
  end

  it 'displays the correct heading' do
    expect(page).to have_selector('h1', text: 'Welcome to My World of Design and Code')
  end

  it 'displays content' do
    expect(page).to have_selector('p', text: 'Business owner, designer & part-time DJ who loves this changing world')
  end

end
