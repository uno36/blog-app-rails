class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  has_many :liked_posts, through: :likes, source: :post

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def recent_posts(limit = 3)
    posts.order(created_at: :desc).limit(limit)
  end

  def like(post)
    liked_posts << post unless likes?(post)
  end

  def unlike(post)
    liked_posts.delete(post)
  end

  def likes?(post)
    liked_posts.include?(post)
  end
end
