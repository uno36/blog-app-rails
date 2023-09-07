# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(
  name: 'Tom',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "Tom is a dedicated teacher hailing from the vibrant country of Mexico. With a passion for education that knows no bounds, he's been shaping young minds for over a decade. His classroom is a place where students not only learn but also discover their potential. Tom believes in the power of knowledge to transform lives and societies. When he's not teaching, he enjoys exploring Mexican culture, savoring its cuisine, and soaking in the beautiful landscapes. Tom's commitment to nurturing future leaders makes him a beacon of inspiration for both his students and colleagues."
)

second_user = User.create(
  name: 'Lilly',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "Lilly is an accomplished teacher from the picturesque country of Poland. Her journey in education has been marked by creativity and innovation. She believes in making learning an exciting adventure, often incorporating art and culture into her lessons. Lilly is a firm advocate for multilingualism, encouraging her students to embrace the world of languages. Beyond the classroom, she's a connoisseur of Polish literature and can often be found lost in the pages of classic novels. Her dedication to nurturing young minds and fostering a love for learning is truly commendable."
)

third_user = User.create(
  name: 'John',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "John is a dynamic engineer hailing from the heart of the United States. He's a problem solver at his core, always ready to tackle challenges head-on. John's career has been filled with groundbreaking projects, from designing sustainable infrastructure to developing cutting-edge technology. Outside of work, he's an avid outdoors enthusiast, exploring the national parks and hiking trails that the USA has to offer. His passion for engineering is equaled only by his love for adventure, making him a well-rounded individual who's always seeking new horizons."
)

fourth_user = User.create(
  name: 'Anna',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "Anna, a talented designer from the enchanting land of France, breathes life into aesthetics. Her design philosophy revolves around merging functionality with elegance, creating products that are not only visually stunning but also user-friendly. Anna is a firm believer in the power of art to inspire and communicate. She finds inspiration in the charming streets of Paris, where every corner tells a story. Outside of her design studio, she enjoys painting and experimenting with various artistic mediums. Anna's commitment to crafting beautiful and functional designs has left an indelible mark on the world of art and design."
)

fifth_user = User.create(
  name: 'David', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "David, a wordsmith from the vast landscapes of Canada, weaves tales with his pen. As a dedicated writer, he's explored various genres, from captivating fiction to thought-provoking journalism. David's love for storytelling extends to his passion for traveling, where he gathers inspiration from diverse cultures and landscapes. When not crafting narratives, he enjoys hiking in the Canadian wilderness, capturing the beauty of nature through his lens. David's words have the power to transport readers to different worlds, making him a literary explorer who invites others to join him on imaginative journeys."
)

sixth_user = User.create(
  name: 'Eva',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "Eva, an artistic soul from the creative hub of Germany, expresses herself through colors and forms. Her art transcends boundaries, evoking emotions and sparking conversations. She's known for her innovative approach to art, often experimenting with unconventional materials and techniques. Eva finds inspiration in the eclectic streets of Berlin, where artistic expression knows no bounds. In her free time, she enjoys attending gallery exhibitions and supporting fellow artists. Eva's commitment to pushing the boundaries of art and challenging perceptions makes her a trailblazer in the world of contemporary art."
)

seventh_user = User.create(
  name: 'Michael',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "Michael, a compassionate doctor from the diverse landscapes of Australia, dedicates his life to healing and caring for others. With a career spanning decades, he's witnessed the transformation of medical science and technology. Michael's patients appreciate his empathetic approach and unwavering commitment to their well-being. Beyond the hospital, he's an advocate for outdoor activities and a lover of Australia's unique flora and fauna. Michael's life is a testament to the importance of health and the profound impact a caring physician can have on their community."
)

eighth_user = User.create(
  name: 'Sophie',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "Sophie, a brilliant scientist from the innovation-driven nation of Sweden, explores the mysteries of the universe through her research. Her work in the field of quantum physics has pushed the boundaries of human understanding. Sophie's inquisitive mind is not confined to the laboratory; she's an advocate for science education and actively engages with students, sparking their curiosity. Outside of her research, she enjoys stargazing in the Swedish countryside and hiking in the pristine Nordic landscapes. Sophie's dedication to unraveling the secrets of the cosmos inspires both her peers and future scientists."
)

ninth_user = User.create(
  name: 'Daniel',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "Daniel, a visionary entrepreneur from the bustling streets of Brazil, is on a mission to revolutionize industries. His journey in the business world has been marked by innovative startups and groundbreaking ventures. Daniel believes in the power of entrepreneurship to drive positive change in society. When he's not strategizing for his next venture, he enjoys exploring Brazil's rich cultural heritage, from samba rhythms to Amazon rainforest adventures. Daniel's passion for innovation and social impact sets him apart as a dynamic leader in the global entrepreneurial landscape."
)

tenth_user = User.create(
  name: 'Olivia',
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
  bio: "Olivia, a dynamic marketing professional from the vibrant culture of Spain, knows how to capture the essence of brands and tell their stories. Her career has been filled with successful campaigns that have left a mark on the industry. Olivia is a strong advocate for the fusion of traditional and digital marketing strategies. Outside the office, she's an avid flamenco dancer, infusing her life with the passion and rhythm of Spanish culture. Olivia's ability to connect with audiences and create memorable marketing experiences makes her a driving force in the ever-evolving world of marketing and branding."
)

# Posts for Tom
first_post_tom = Post.create(author: first_user, title: 'Hello World', text: 'This is my first post on this amazing platform. Excited to share my thoughts and experiences with all of you!')
second_post_tom = Post.create(author: first_user, title: 'Teaching Insights', text: 'Today, I want to share some insights on effective teaching methods that I\'ve learned during my years as a teacher in Mexico. Stay tuned for more tips!')
third_post_tom = Post.create(author: first_user, title: 'Mexican Adventures', text: 'Exploring the rich culture and breathtaking landscapes of Mexico has always been a passion of mine. Can\'t wait to share my travel experiences with you all!')
fourth_post_tom = Post.create(author: first_user, title: 'Books I Love', text: 'As an avid reader, I\'d like to recommend some of my favorite books. Let\'s embark on a literary journey together!')

# Posts for Lilly
first_post_lilly = Post.create(author: second_user, title: 'Greetings, Everyone!', text: 'I\'m thrilled to join this platform. Let\'s connect and exchange ideas about teaching, learning, and life in Poland!')
second_post_lilly = Post.create(author: second_user, title: 'Cultural Exchange', text: 'Teaching in Poland has exposed me to a diverse range of cultures. I\'ll be sharing stories of cultural exchange and learning moments here.')
third_post_lilly = Post.create(author: second_user, title: 'Exploring Poland', text: 'Poland is a land of beauty and history. Join me in discovering its hidden gems and sharing travel tips!')
fourth_post_lilly = Post.create(author: second_user, title: 'Language Magic', text: 'Let\'s delve into the magic of language. I\'ll be posting language-related content and inviting discussions about the power of words.')

# Posts for John
first_post_john = Post.create(author: third_user, title: 'Engineering Wonders', text: 'In the world of engineering, there\'s always something incredible happening. I\'ll be sharing fascinating engineering projects and innovations.')
second_post_john = Post.create(author: third_user, title: 'Problem Solving', text: 'The essence of engineering lies in solving complex problems. Join me as we explore real-world challenges and creative solutions.')
third_post_john = Post.create(author: third_user, title: 'Nature\'s Influence', text: 'Nature has always been my greatest inspiration. I\'ll be sharing how the natural world informs my engineering work and life.')
fourth_post_john = Post.create(author: third_user, title: 'Engineer\'s Toolbox', text: "Curious about the tools and technologies that drive engineering? I\'ll be discussing the latest advancements and their applications.")

# Posts for Anna
first_post_anna = Post.create(author: fourth_user, title: 'Design Philosophy', text: "Welcome to my world of design! I\'ll be sharing my design philosophy, inspirations, and the artistry behind my creations.")
second_post_anna = Post.create(author: fourth_user, title: 'Form and Function', text: "Design is not just about aesthetics; it\'s about making things work seamlessly. Let\'s explore the harmony of form and function together.")
third_post_anna = Post.create(author: fourth_user, title: 'French Artistry', text: 'France has a rich artistic heritage that constantly influences my work. Join me in discovering the artistic treasures of this beautiful country.')
fourth_post_anna = Post.create(author: fourth_user, title: 'Designing for the Future', text: 'The design world is evolving rapidly. I\'ll be discussing the latest trends and innovations shaping the future of design.')

# Posts for David
first_post_david = Post.create(author: fifth_user, title: 'Writing Journey', text: 'Embarking on a writer\'s journey is like exploring uncharted territory. Join me as I share my experiences, challenges, and triumphs in the world of words.')
second_post_david = Post.create(author: fifth_user, title: 'Literary Inspirations', text: 'Great writers have always been my mentors. I\'ll be spotlighting the authors and books that have left an indelible mark on my writing.')
third_post_david = Post.create(author: fifth_user, title: 'Nature and Creativity', text: 'Nature has a profound influence on my writing. Let\'s connect with the natural world and see how it fuels creativity.')
fourth_post_david = Post.create(author: fifth_user, title: 'Writing Tips', text: 'Interested in honing your writing skills? I\'ll be sharing practical tips and techniques to help you become a better writer.')

# Posts for Eva
first_post_eva = Post.create(author: sixth_user, title: 'Artistic Expression', text: 'Welcome to the world of art and creativity! I\'ll be sharing my artistic journey, techniques, and the emotions that drive my work.')
second_post_eva = Post.create(author: sixth_user, title: 'Unconventional Art', text: 'Art knows no boundaries. Join me as we explore unconventional and experimental art forms that challenge the norm.')
third_post_eva = Post.create(author: sixth_user, title: 'Berlin\'s Art Scene', text: 'Berlin is a hub of artistic innovation. Let\'s delve into the dynamic art scene of this vibrant city and discover emerging talents.')
fourth_post_eva = Post.create(author: sixth_user, title: 'Art and Society', text: 'Art has the power to shape society. I\'ll be discussing how art can be a force for positive change and a reflection of our times.')

# Posts for Michael
first_post_michael = Post.create(author: seventh_user, title: 'Doctor\'s Diary', text: 'Join me on a journey through the world of medicine and healthcare. I\'ll be sharing my experiences, medical insights, and stories of healing.')
second_post_michael = Post.create(author: seventh_user, title: 'Health and Wellness', text: 'The pursuit of good health is a lifelong journey. Let\'s explore tips, practices, and insights for a healthier, happier life.')
third_post_michael = Post.create(author: seventh_user, title: 'Australian Adventures', text: 'Australia is not just my home; it\'s a land of natural wonders. I\'ll be sharing my outdoor adventures and encounters with Australian wildlife.')
fourth_post_michael = Post.create(author: seventh_user, title: 'Doctor\'s Corner', text: 'Have questions about your health? I\'ll be addressing common health concerns and providing valuable advice in the Doctor\'s Corner.')

# Posts for Sophie
first_post_sophie = Post.create(author: eighth_user, title: 'Quantum World', text: 'Dive into the intriguing realm of quantum physics with me. I\'ll be unraveling the mysteries of the universe, one particle at a time.')
second_post_sophie = Post.create(author: eighth_user, title: 'Scientific Discoveries', text: 'Science is a journey of constant discovery. Join me in exploring the latest breakthroughs and their implications for our world.')
third_post_sophie = Post.create(author: eighth_user, title: 'Starry Nights', text: 'Sweden offers some of the best stargazing opportunities. Let\'s embark on celestial journeys, unraveling the secrets of the cosmos.')
fourth_post_sophie = Post.create(author: eighth_user, title: 'Science Education', text: 'Passionate about science education, I\'ll be sharing resources and insights to inspire the next generation of scientists.')

# Posts for Daniel
first_post_daniel = Post.create(author: ninth_user, title: 'Entrepreneurial Spirit', text: 'Welcome to the world of entrepreneurship and innovation. I\'ll be sharing stories of startups, business strategies, and the entrepreneurial mindset.')
second_post_daniel = Post.create(author: ninth_user, title: 'Brazilian Business', text: 'Brazil is a thriving hub of business opportunities. Let\'s explore the Brazilian business landscape and discover the keys to success.')
third_post_daniel = Post.create(author: ninth_user, title: 'Social Impact', text: 'Entrepreneurship isn\'t just about profits; it can also drive positive social change. I\'ll be discussing the intersection of business and social impact.')
fourth_post_daniel = Post.create(author: ninth_user, title: 'Global Entrepreneurship', text: 'Entrepreneurship knows no borders. Let\'s discuss global trends, market insights, and the challenges and opportunities of running a global business.')

# Posts for Olivia
first_post_olivia = Post.create(author: tenth_user, title: 'Marketing Insights', text: 'Join me in the exciting world of marketing. I\'ll be sharing insights, strategies, and case studies that showcase the power of effective marketing.')
second_post_olivia = Post.create(author: tenth_user, title: 'Spanish Influence', text: 'Spain has a unique cultural influence on marketing. Let\'s explore the impact of Spanish culture and creativity in the marketing world.')
third_post_olivia = Post.create(author: tenth_user, title: 'Digital Marketing Trends', text: 'In the age of digital transformation, marketing is constantly evolving. I\'ll be discussing the latest digital marketing trends and tactics.')
fourth_post_olivia = Post.create(author: tenth_user, title: 'Brand Storytelling', text: 'Effective marketing is all about telling compelling stories. I\'ll be delving into the art of brand storytelling and its impact on consumer engagement.')


# Comments for Tom's posts
comment1_tom_post1 = Comment.create(post: first_post_tom, author: second_user, text: 'Hi Tom! Excited to read your posts about teaching in Mexico.')
comment2_tom_post1 = Comment.create(post: first_post_tom, author: third_user, text: 'Welcome to the platform, Tom! Looking forward to your insights.')
comment1_tom_post2 = Comment.create(post: second_post_tom, author: fourth_user, text: 'Tom, your teaching tips are always valuable. Keep them coming!')
comment2_tom_post2 = Comment.create(post: second_post_tom, author: fifth_user, text: 'I\'m a student, and your teaching advice has been a game-changer for me!')


# Comments for Lilly's posts
comment1_lilly_post1 = Comment.create(post: first_post_lilly, author: first_user, text: 'Welcome, Lilly! Poland is a beautiful country. Share your experiences!')
comment2_lilly_post1 = Comment.create(post: first_post_lilly, author: third_user, text: "Hi Lilly! I've always wanted to visit Poland. Tell me more about it.")
comment1_lilly_post2 = Comment.create(post: second_post_lilly, author: fifth_user, text: 'Cultural exchange in teaching is enriching. Looking forward to your stories!')
comment2_lilly_post2 = Comment.create(post: second_post_lilly, author: sixth_user, text: 'Poland has such a rich history. Tell us about your favorite historical spots!')

# Comments for John's posts
comment1_john_post1 = Comment.create(post: first_post_john, author: seventh_user, text: "Engineering is fascinating! Can't wait to learn from you, John.")
comment2_john_post1 = Comment.create(post: first_post_john, author: eighth_user, text: "Hello, John! Engineering is all about solving problems. Share some challenges you've tackled.")
comment1_john_post2 = Comment.create(post: second_post_john, author: fourth_user, text: "I\'m a fellow engineer. Let\'s discuss real-world engineering challenges.")
comment2_john_post2 = Comment.create(post: second_post_john, author: fifth_user, text: "Engineering innovations are changing the world. Tell us about your favorite projects!")

# Comments for Anna's posts
comment1_anna_post1 = Comment.create(post: first_post_anna, author: sixth_user, text: "Anna, your designs are incredible. Can't wait to see more!")
comment2_anna_post1 = Comment.create(post: first_post_anna, author: seventh_user, text: 'Welcome, Anna! How do you balance aesthetics and functionality in your designs?')
comment1_anna_post2 = Comment.create(post: second_post_anna, author: eighth_user, text: 'Designing for user experience is crucial. Any UX design tips, Anna?')
comment2_anna_post2 = Comment.create(post: second_post_anna, author: ninth_user, text: "I'm an aspiring designer. Share your journey and insights, Anna!")

# Comments for David's posts
comment1_david_post1 = Comment.create(post: first_post_david, author: tenth_user, text: 'David, writing is a beautiful journey. Share your experiences!')
comment2_david_post1 = Comment.create(post: first_post_david, author: first_user, text: 'Hi David! Who are your favorite authors?')
comment1_david_post2 = Comment.create(post: second_post_david, author: second_user, text: 'Literature has the power to change lives. Recommend some must-read books!')
comment2_david_post2 = Comment.create(post: second_post_david, author: fourth_user, text: 'David, how do you overcome writer\'s block? Share your strategies!')

# Comments for Eva's posts
comment1_eva_post1 = Comment.create(post: first_post_eva, author: third_user, text: 'Eva, your artwork is inspiring. Can we see some of your recent pieces?')
comment2_eva_post1 = Comment.create(post: first_post_eva, author: fifth_user, text: 'Hi Eva! What art mediums do you enjoy working with the most?')
comment1_eva_post2 = Comment.create(post: second_post_eva, author: seventh_user, text: 'Experimental art is intriguing. Tell us about your latest experiments, Eva.')
comment2_eva_post2 = Comment.create(post: second_post_eva, author: eighth_user, text: 'Berlin is an artistic hub. Any recommendations for art galleries, Eva?')

# Comments for Michael's posts
comment1_michael_post1 = Comment.create(post: first_post_michael, author: ninth_user, text: 'Michael, healthcare is essential. Share stories of your impactful medical experiences.')
comment2_michael_post1 = Comment.create(post: first_post_michael, author: tenth_user, text: 'Hi Michael! Any tips for maintaining a healthy lifestyle?')
comment1_michael_post2 = Comment.create(post: second_post_michael, author: first_user, text: "Australia's natural beauty is astounding. Share your favorite outdoor spots, Michael.")
comment2_michael_post2 = Comment.create(post: second_post_michael, author: second_user, text: 'Hi Michael! How do you balance your work as a doctor with your outdoor adventures?')

# Comments for Sophie's posts
comment1_sophie_post1 = Comment.create(post: first_post_sophie, author: third_user, text: 'Quantum physics is mind-boggling. Explain some quantum phenomena, Sophie!')
comment2_sophie_post1 = Comment.create(post: first_post_sophie, author: fourth_user, text: 'Hi Sophie! What led you to pursue a career in quantum physics?')
comment1_sophie_post2 = Comment.create(post: second_post_sophie, author: sixth_user, text: 'Science education is crucial. How do you engage students in complex topics, Sophie?')
comment2_sophie_post2 = Comment.create(post: second_post_sophie, author: seventh_user, text: 'Sophie, tell us about your most exciting scientific discovery!')

# Comments for Daniel's posts
comment1_daniel_post1 = Comment.create(post: first_post_daniel, author: eighth_user, text: 'Entrepreneurship is dynamic. Share stories of your startup ventures, Daniel.')
comment2_daniel_post1 = Comment.create(post: first_post_daniel, author: tenth_user, text: 'Hi Daniel! What inspired you to become an entrepreneur?')
comment1_daniel_post2 = Comment.create(post: second_post_daniel, author: first_user, text: 'Brazilian business has a unique flavor. Tell us about the challenges and rewards, Daniel.')
comment2_daniel_post2 = Comment.create(post: second_post_daniel, author: third_user, text: 'Daniel, any advice for aspiring entrepreneurs looking to make a social impact?')

# Comments for Olivia's posts
comment1_olivia_post1 = Comment.create(post: first_post_olivia, author: second_user, text: 'Marketing is ever-evolving. Share your thoughts on staying ahead in the field, Olivia.')
comment2_olivia_post1 = Comment.create(post: first_post_olivia, author: fourth_user, text: 'Hi Olivia! What marketing trends do you see shaping the future?')
comment1_olivia_post2 = Comment.create(post: second_post_olivia, author: sixth_user, text: 'Spanish culture is vibrant. How does it influence your marketing strategies, Olivia?')
comment2_olivia_post2 = Comment.create(post: second_post_olivia, author: eighth_user, text: 'Olivia, what role does storytelling play in effective marketing campaigns?')


