require 'rails_helper'

describe Post, type: :request do
  before do
    @user = User.create(name: 'Sam', photo: 'photo.url', bio: 'Excellent', posts_counter: 0)
    @post = Post.create(author: @user, title: 'Let us go', text: 'This is the text for the post')
  end

  describe 'routes with post_controller' do
    it 'should render the index action correctly' do
      get "/users/#{@user.id}/posts"
      expect(response).to be_successful
      expect(response).to render_template('posts/index')
      expect(response).to render_template(layout: 'layouts/application')
    end

    it 'should render the index content correctly' do
      get "/users/#{@user.id}/posts"
      expect(response.body).to include('Here is a list of posts for a given user')
    end

    it 'should render the show action correctly' do
      get "/users/#{@user.id}/posts/1"
      expect(response).to be_successful
      expect(response).to render_template('posts/show', layout: 'layouts/application')
      expect(response.body).to include('Details of a selected post')
    end
  end
end
