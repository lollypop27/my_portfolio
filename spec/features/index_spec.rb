require 'spec_helper'

describe 'index' do, type: :feature do
  before do
    visit '/'
  end
  it "says hello Lara has h1 header" do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Hello' lara
    end
  end
end
