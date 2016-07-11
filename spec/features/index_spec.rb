require 'spec_helper'

  describe 'index', type: :feature do
    before do
      visit '/'
  end

  it 'renders header partial' do
    expect(page).to have_selector 'header'
    within 'header' do
      expect(page).to have_content 'About Me'
      expect(page).to have_content 'My Portfolio'
    end
  end

  it 'renders footer partial' do
  expect(page).to have_selector 'footer'
  within 'footer' do
    expect(page).to have_content 'Site Map'
    expect(page).to have_content 'Contact Me'
  end
end
end
