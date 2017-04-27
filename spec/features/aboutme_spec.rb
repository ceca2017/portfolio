require 'spec_helper'

describe 'About me', type: :feature do
  before do
    visit '/'
  end

  it 'got About me section' do
    expect(page).to have_selector '#aboutme'
  end

  it 'with some content' do
    expect(page).to have_selector '#aboutme' do
      within '#aboutme' do
        expect(page).to have_selector 'div.description'
        within 'div.description' do
          expect(page).not_to eq nil
        end
      end
    end
  end
end
