require 'spec_helper'

  describe 'portfolio', type: :feature do
    before do
      visit '/portfolio'
  end
  
  it 'displays project list' do
   expect(page).to have_css '.portfolio'
   within '.portfolio' do
     expect(page).to have_content 'My First Website'
     expect(page).to have_content 'FizzBuzz'
   end
 end
end
