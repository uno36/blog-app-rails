require 'faker'

namespace :custom do
  task create_posts: :environment do
    excluded_users = ['Tom', 'Lilly']

    # Save the current Faker locale
    original_locale = Faker::Config.locale
    
    # Set the locale to English
    Faker::Config.locale = 'en'
    
    User.where.not(name: excluded_users).limit(10).each do |user|
      Post.create!(
        author: user,
        title: Faker::Lorem.sentence,
        text: Faker::Lorem.paragraph,
        comments_counter: rand(0..20),
        likes_counter: rand(0..50)
      )
    end
    
    # Reset the Faker locale to the original value
    Faker::Config.locale = original_locale

    puts "10 posts created!"
  end
end
