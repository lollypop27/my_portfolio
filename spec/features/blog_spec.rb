require 'spec_helper'

  describe 'blog', type: :feature do
    before do
      visit '/blog.html'
  end

  it 'displays the correct heading' do
    expect(page).to have_selector('h1', text: 'My Blogging Journey')
  end

end
