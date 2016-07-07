require 'spec_helper'

  describe 'index' do, type: :feature do
    before do
      visit '/'
    end

    it 'says Hello Lara with a h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Hello Lara'
    end
  end
end
