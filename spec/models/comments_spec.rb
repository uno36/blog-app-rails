require 'rails_helper'

RSpec.describe Comment, type: :model do
  first_user = User.create(name: 'Nelly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')

  it 'is valid with non-empty text' do
    comment = Comment.new(post: first_post, author: first_user, text: 'Hi Nelly!')
    expect(comment).to be_valid
  end

  it 'is valid with empty text' do
    comment = Comment.new(post: first_post, author: first_user, text: '')
    expect(comment).to be_valid
  end

  it 'is valid with text containing only whitespace' do
    comment = Comment.new(post: first_post, author: first_user, text: '   ')
    expect(comment).to be_valid
  end
end
