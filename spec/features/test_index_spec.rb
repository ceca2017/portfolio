require 'spec_helper'

describe 'index', type: :feature do
  before do
    visit '/'
  end


  it 'says Middleman is fun' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Middleman is fun'
    end
  end

  it 'displays Middleman logo' do
    expect(page).to have_css 'img[src*="middleman-logo.svg"]'
  end
end
