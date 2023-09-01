require 'faker'

namespace :custom do
  task create_comments: :environment do
    # Save the current Faker locale
    original_locale = Faker::Config.locale
    
    # Set the locale to English
    Faker::Config.locale = 'en'
    
    Post.all.each do |post|
      rand(0..10).times do
        Comment.create!(
          post: post,
          author: post.author,  # Link comment to post's author
          text: Faker::Lorem.sentence
        )
      end
    end
    
    # Reset the Faker locale to the original value
    Faker::Config.locale = original_locale

    puts "Comments created!"
  end
end
