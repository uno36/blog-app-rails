require 'rails_helper'

RSpec.describe 'Post index page', type: :feature do
  user = User.create(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  first_post = Post.create(title: 'First post', text: 'This is my first post', author_id: user.id)
  second_post = Post.create(title: 'Second post', text: 'This is my second post', author_id: user.id)
  third_post = Post.create(title: 'Third post', text: 'This is my third post', author_id: user.id)
  Comment.create(text: 'This is my first comment', author_id: user.id, post_id: first_post.id)
  Comment.create(text: 'This is my second comment', author_id: user.id, post_id: second_post.id)
  Comment.create(text: 'This is my third comment', author_id: user.id, post_id: third_post.id)

  before :each do
    visit user_posts_path(user)
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

    it "should see the post's title" do
      user.posts.each do |post|
        expect(page).to have_content post.title
      end
    end

    it "should see the post's body" do
      user.posts.each do |post|
        expect(page).to have_content post.text
      end
    end

    it 'should see first comments on a post' do
      user.posts.each do |post|
        recent_comments = post.recent_comments
        recent_comments.each do |comment|
          expect(page).to have_content("#{comment.author.name}: #{comment.text}")
        end
      end
    end

    it 'should see how many comments a post has' do
      user.posts.each do |post|
        expect(page).to have_content("Comments: #{post.comments.count}")
      end
    end

    it 'should see how many likes a post has' do
      user.posts.each do |post|
        expect(page).to have_content("Likes: #{post.likes.count}")
      end
    end
  end

  describe 'clicking on post' do
    it 'redirects to posts show page' do
      click_link(href: user_post_path(user, first_post))
      expect(page).to have_current_path(user_post_path(user, first_post))
    end

    it 'has a section pagination if there are more posts' do
      assert page.has_css?('div.pagination')
    end
  end
end
