require 'rails_helper'
RSpec.describe 'User index page', type: :feature do
  before :each do
    User.create(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
    User.create(name: 'Mike', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
    User.create(name: 'Jayden', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  end
  describe "page's content" do
    before :each do
      visit users_path
    end
    it "should show the user's name" do
      User.all.each { |user| expect(page).to have_content user.name }
    end
    it "should show the user's pic" do
      User.all.each { |user| expect(page).to have_css("img[src='#{user.photo}']") }
    end
    it 'should display the number of posts' do
      User.all.each { |user| expect(page).to have_content("Number of posts: #{user.posts.count}") }
    end
  end
  describe 'clicking on user link feature' do
    before :each do
      @user = User.first
      visit users_path
    end
    it 'redirects to show page' do
      click_link(href: user_path(@user))
      expect(page).to have_current_path(user_path(@user))
    end
  end
end