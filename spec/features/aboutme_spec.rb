require 'spec_helper'

describe 'About me', type: :feature do
  before do
    visit '/'
  end

  it 'got About me section' do
    expect(page).to have_selector 'div.aboutme'
  end

  it 'with some content' do
    expect(page).to have_selector 'div.aboutme' do
      within 'div.aboutme' do
        expect(page).to have_selector 'div.desciption'
        within 'div.desciption' do
          expect(page).not_to eq nil
        end
      end
    end
  end
end
