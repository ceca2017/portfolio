require 'spec_helper'

describe 'Partials', type: :feature do
  before do
    visit '/'
  end

  it 'got header' do
    expect(page).to have_selector 'div.header'
  end

  it 'with some content' do
    expect(page).to have_selector 'div.header' do
      within 'div.header' do
        expect(page).not_to eq nil
      end
    end
  end

  it 'got footer' do
    expect(page).to have_selector 'div.footer'
  end

  it 'with some content' do
    expect(page).to have_selector 'div.footer' do
      within 'div.footer' do
        expect(page).not_to eq nil
      end
    end
  end
end
