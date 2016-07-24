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
  it 'displays the correct heading' do
    expect(page).to have_selector('h1', text: 'Welcome to Lara Templemore-Walters Portfolio of Design and Code')
  end

  # it 'shows link to facebook' do
  #   expect(page).to have_css 'fa-facebook'
  # end

  it 'renders footer partial' do
  expect(page).to have_selector 'footer'
  within 'footer' do
    expect(page).to have_content 'Site Map'
    expect(page).to have_content 'Contact Me'
  end
end
end
