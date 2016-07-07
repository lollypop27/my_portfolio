require 'spec_helper'

  describe 'index', type: :feature do
    before do
      visit '/'
  end

  it 'says Welcome to Lara with a h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Welcome to Lara'
    end
  end

  # it 'renders header partial' do
  #   expect(page).to have_selector 'header'
  #   within 'header' do
  #     expect(page).to have_content 'header'
  #   end
  # end

  it 'renders footer partial' do
  expect(page).to have_selector 'footer'
  within 'footer' do
    expect(page).to have_content 'Site Map'
    expect(page).to have_content 'Contact Me'
  end
end
end
