class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id

  after_save :update_user_posts_counter

  def update_user_posts_counter
    author.increment!(:posts_counter)
  end

  def recent_comments(limit = 5)
    comments.order(created_at: :desc).limit(limit)
  end
end
