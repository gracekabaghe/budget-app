require 'rails_helper'

RSpec.describe 'Group Index', type: :feature do
  describe 'Group' do
    before(:each) do
      @user1 = User.create! name: 'Yezzi', password: 'ujhygt', email: 'yezzi@gmail.com'
      @group = @user1.groups.create! name: 'Toiletries', icon: 'icon'
      visit new_user_session_path
      fill_in('Email', with: 'yezzi@gmail.com')
      fill_in('Password', with: 'ujhygt')
      click_button('LOG IN')
      visit root_path
      click_on('Toiletries')
    end

    it 'has some buttons' do
      expect(page).to have_selector(:link_or_button, 'Back')
      expect(page).to have_selector(:link_or_button, 'Add transaction')
    end

    it 'has heading in navbar' do
      expect(page).to have_selector(:link_or_button, 'Transactions')
    end
  end
end
