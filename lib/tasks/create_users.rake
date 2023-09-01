require 'faker'

namespace :custom do
  task create_users: :environment do
    excluded_users = ['Tom', 'Lilly']

    # Save the current Faker locale
    original_locale = Faker::Config.locale
    
    # Set the locale to English
    Faker::Config.locale = 'en'
    
    10.times do
      name = Faker::Name.unique.name
      next if excluded_users.include?(name)

      User.create!(
        name: name,
        photo: Faker::LoremPixel.image(size: '50x50'),
        bio: Faker::Lorem.sentence,
        posts_counter: 0
      )      
    end
    
    # Reset the Faker locale to the original value
    Faker::Config.locale = original_locale

    puts "10 users created!"
  end
end
