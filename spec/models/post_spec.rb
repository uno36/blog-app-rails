require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:first_user) { User.create(name: 'Tumaini', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }

  it 'is valid with a title and valid counters' do
    first_post = Post.new(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                          likes_counter: 0)
    expect(first_post).to be_valid
  end

  it 'is invalid when comments_counter is less than 0' do
    first_post = Post.new(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: -3,
                          likes_counter: 0)
    expect(first_post).not_to be_valid
  end

  it 'is invalid when likes_counter is less than 0' do
    first_post = Post.new(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                          likes_counter: -3)
    expect(first_post).not_to be_valid
  end

  it 'is invalid when comments_counter is not an integer' do
    first_post = Post.new(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 'one',
                          likes_counter: 0)
    expect(first_post).not_to be_valid
  end

  it 'is invalid when likes_counter is not an integer' do
    first_post = Post.new(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                          likes_counter: 'one')
    expect(first_post).not_to be_valid
  end
end
