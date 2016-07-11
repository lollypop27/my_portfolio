require 'spec_helper'

  describe 'about', type: :feature do
    before do
      visit '/about'
  end

  it 'says Welcome to My World with a h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Welcome to'
    end
  end
end
