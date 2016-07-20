require 'spec_helper'

  describe 'sitemap', type: :feature do
    before do
      visit '/sitemap.html'
  end

  it 'displays the correct heading' do
    expect(page).to have_selector('h3', text: 'Sitemap')
    expect(page).to have_content 'About Me'
  end
end
