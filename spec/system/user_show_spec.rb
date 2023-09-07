require 'rails_helper'

RSpec.describe 'User show page', type: :feature do
  user = User.create(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  Post.create(title: 'First post', text: 'This is my first post', author_id: user.id)
  Post.create(title: 'Second post', text: 'This is my second post', author_id: user.id)
  Post.create(title: 'Third post', text: 'This is my third post', author_id: user.id)
  last_post = Post.create(author_id: user.id, title: 'Hello', text: 'This is my fourth post')
  before :each do
    visit user_path(user)
  end
  describe "page's content" do
    it "should show the user's name" do
      expect(page).to have_content user.name
    end
    it "should show the user's pic" do
      expect(page).to have_css("img[src='#{user.photo}']")
    end
    it 'should display the number of posts' do
      expect(page).to have_content("Number of posts: #{user.posts.count}")
    end
    it "should show the user's bio" do
      expect(page).to have_content user.bio
    end
    it "should show the user's first 3 posts" do
      user_posts = user.recent_posts
      user_posts[0..2].each do |post|
        expect(page).to have_content post.title
      end
      user_posts[3..].each do |post|
        expect(page).not_to have_content post.title
      end
    end
    it 'should display a button that lets me view all of a user\'s posts' do
      expect(page).to have_link('View all posts')
    end
    describe 'interactions on page' do
      it "redirects to post's show page when post is clicked" do
        click_link(href: user_post_path(user, last_post))
        expect(page).to have_current_path(user_post_path(user, last_post))
      end
      it "redirects to post's index page when 'View all posts' clicked" do
        click_link('View all posts')
        expect(page).to have_current_path(user_posts_path(user))
      end
    end
  end
end
