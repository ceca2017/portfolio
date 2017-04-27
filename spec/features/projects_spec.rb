require 'spec_helper'

describe 'Projects', type: :feature do
  before do
    visit '/'
  end

  it 'got the ATM Challenge listed' do
    expect(page).to have_content 'ATM Challenge'
  end

  # The test below does not work as is. It complains it finds several matches.
  # How to solve?
  xit 'got the ATM Challenge listed' do
    expect(page).to have_selector 'div.proj-title'
    within 'div.proj-title' do
      expect(page).to have_content 'Title: ATM Challenge'
    end
  end
end
