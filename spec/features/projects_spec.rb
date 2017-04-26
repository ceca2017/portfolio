require 'spec_helper'

describe 'Projects', type: :feature do
  before do
    visit '/'
  end

  xit 'got the ATM Challenge listed' do
    expect(page).to have_selector 'div.proj-title'
    within 'div.proj-title' do
      expect(page).to have_content 'Title: ATM Challenge'
    end
  end

  it 'got the ATM Challenge listed' do
    expect(page).to have_content 'Title: ATM Challenge'
  end
end
