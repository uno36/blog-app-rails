require 'rails_helper'

RSpec.describe 'Post show page', type: :feature do
  user = User.create(name: 'Mike', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  post = Post.create(author_id: user.id, title: 'Hello', text: 'This is my first post')
  comment = Comment.create(author_id: user.id, post_id: post.id, text: 'text')

  before :each do
    visit user_post_path(user, post)
  end

  describe "page's content" do
    it "should see the post's title" do
      expect(page).to have_content("#{post.title} by #{post.author.name}")
    end

    it "should see the post's author" do
      expect(page).to have_content("#{post.title} by #{post.author.name}")
    end

    it 'should see how many comments the post has' do
      expect(page).to have_content("Comments: #{post.comments.count}")
    end

    it 'should see how many likes the post has' do
      expect(page).to have_content("Likes: #{post.likes.count}")
    end

    it 'should see the body of the post' do
      expect(page).to have_content(post.text.to_s)
    end

    it 'should see username of each commentor' do
      expect(page).to have_content("#{comment.author.name}: #{comment.text}")
    end

    it 'should see the comment the commentor left' do
      expect(page).to have_content("#{comment.author.name}: #{comment.text}")
    end
  end
end
