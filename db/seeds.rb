require "open-uri"

User.destroy_all

puts "Data Base CLEANED"


user1 = User.new(username: 'Coca-Cola', email: 'coca-cola@gmail.com', password: '123456', type_of_user: 'Company', address: '120 Javier street, Minnesota, USA', phone: '+1 (404) 676-2121')
user1.save!
user2 = User.new(username: 'Pedro', email: 'pedro@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Independence Av. 3004, London, United Kingdom', phone: '+4 (420) 6578-9809')
user2.save!
user3 = User.new(username: 'Emma', email: 'emma@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Bogota 1234, Lima, Peru', phone: '+5 (101) 9123-6767')
user3.save!
user4 = User.new(username: 'Netflix', email: 'netflix@gmail.com', password: '123456', type_of_user: 'Company', address: '100 Winchester Cir, California, USA', phone: '+1 (408) 540-3700')
user4.save!
user5 = User.new(username: 'Sarah', email: 'sarah@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Saint James 3005, Paris, France', phone: '+33140250808')
user5.save!
user6 = User.new(username: 'Maria', email: 'maria@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'M. Hrushevskoho str, Kyiv, Ukraine', phone: '+3 (804) 4200-4525')
user6.save!
user7 = User.new(username: 'Abril', email: 'abril@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'La Palmilla 3932, Santiago, Chile', phone: '+566 1789-6283')
user7.save!
user8 = User.new(username: 'Jose', email: 'jose@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Street: Cr 54 No., Medellin, Colombia', phone: '+57 61789-6283')
user8.save!
user9 = User.new(username: 'Austin', email: 'austin@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Framveien 114, Oslo, Norway', phone: '+47 4154-4777')
user9.save!
user10 = User.new(username: 'Simon', email: 'simon@gmail.com', password: '123456', type_of_user: 'Assistant', address: '21 Baker Street, Millbrook, Australia', phone: '+61 4154-4087')
user10.save!
user11 = User.new(username: 'Alex', email: 'alex@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Lebedeva, bld. 7, Cheboksary, Russia', phone: '+74 1544-9087')
user11.save!
user12 = User.new(username: 'Yannaty', email: 'yannaty@gmail.com', password: '123456', type_of_user: 'Assistant', address: '1849 St. John Street, Caledon, South Africa', phone: '+2 (74) 188-4087')
user12.save!
user13 = User.new(username: 'Laura', email: 'laura@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Av. Coronel Bóveda, Quiíndy, Paraguay', phone: '+5 (95) 276-8353')
user13.save!
user14 = User.new(username: 'Jimena', email: 'jimena@gmail.com', password: '123456', type_of_user: 'Assistant', address: '2311 5th Avenue, Toronto, Canada', phone: '+1 (95) 276-0353')
user14.save!

user15 = User.new(username: 'Instagram', email: 'instagram@gmail.com', password: '123456', type_of_user: 'Company', address: '181 Fremont St, San Francisco, USA', phone: '+1 (650) 543-4800')
user15.save!
user16 = User.new(username: 'McDonalds', email: 'mcdonalds@gmail.com', password: '123456', type_of_user: 'Company', address: '181 Fremont St, Sao Paulo, Brazil', phone: '+1 (650) 543-4809')
user16.save!
user17 = User.new(username: 'Facebook', email: 'facebook@gmail.com', password: '123456', type_of_user: 'Company', address: '1601 Willow, Menlo Park, Germany', phone: '+1 (650) 308-7300')
user17.save!
user18 = User.new(username: 'Google LLC', email: 'google@gmail.com', password: '123456', type_of_user: 'Company', address: '1600 Amphitheatre, CA, USA', phone: '+1 (650) 309-7355')
user18.save!
puts "Created USERS"

company1 = Company.new(user_id: user1.id, name: 'Coca-Cola Co.', description: 'The Coca-Cola Co. is the nonalcoholic beverage company, which engages in the manufacture, market, and sale of non-alcoholic beverages which include sparkling soft drinks, water, enhanced water and sports drinks, juice, dairy and plant-based beverages, tea and coffee and energy drinks.')
company1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1554866585-cd94860890b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29jYWNvbGF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"), filename: "company3.png", content_type: "image/jpeg")
company1.save!

company2 = Company.new(user_id: user4.id, name: 'Netflix Inc', description: 'Netflix Inc (Netflix) provides internet entertainment services for watching movies and television shows. The company offers TV shows and movies such as original series, documentaries, and feature films through an internet subscription on the TV, computer, and mobile devices.')
company2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1633793675529-58eecb6ea16f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "company3.png", content_type: "image/jpeg")
company2.save!

company3 = Company.new(user_id: user15.id, name: 'Instagram', description: 'Instagram is a free, online photo-sharing application and social network platform that was acquired by Facebook in 2012. Instagram allows users to edit and upload photos and short videos through a mobile app.')
company3.photo.attach(io: URI.open("https://images.unsplash.com/photo-1633886897663-44c707d71904?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "company3.png", content_type: "image/jpeg")
company3.save!

company4 = Company.new(user_id: user16.id, name: 'McDonalds', description: 'McDonalds is the worlds largest restaurant chain by revenue, serving over 69 million customers daily in over 100 countries in more than 40.000 outlets as of 2021. McDonalds is best known for its hamburgers, cheeseburgers and french fries, although their menus include other items like chicken, fish, fruit, and salads.')
company4.photo.attach(io: URI.open("https://images.unsplash.com/photo-1649775391951-e3fdf0e7e7ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=581&q=80"), filename: "company3.png", content_type: "image/jpeg")
company4.save!

company5 = Company.new(user_id: user17.id, name: 'Facebook', description: 'Facebook is a website which allows users, who sign-up for free profiles, to connect with friends, work colleagues or people they dont know, online. It allows users to share pictures, music, videos, and articles, as well as their own thoughts and opinions with however many people they like.')
company5.photo.attach(io: URI.open("https://images.unsplash.com/photo-1655199798150-c376e0281f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "company3.png", content_type: "image/jpeg")
company5.save!

company6 = Company.new(user_id: user18.id, name: 'Google LLC', description: 'Google LLC (Google), a subsidiary of Alphabet Inc, is a provider of search and advertising services on the internet. The company focuses on business areas such as advertising, search, platforms and operating systems, and enterprise and hardware products.')
company6.photo.attach(io: URI.open("https://images.unsplash.com/photo-1572059002053-8cc5ad2f4a38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "company3.png", content_type: "image/jpeg")
company6.save!

puts "Created COMPANIES"

assistant1 = Assistant.new(user_id: user2.id, skills: "Computer Software", availability: 'Full-time', firstname: "Pedro", lastname: "Castillo")
assistant1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant2.png", content_type: "image/jpeg")
# assistant1.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant1.pdf", content_type: "file/pdf")
assistant1.save!

assistant2 = Assistant.new(user_id: user3.id, skills: "Organization Skills", availability: 'Part-time', firstname: "Emma", lastname: "Jhonson")
assistant2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1499887142886-791eca5918cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant2.png", content_type: "image/jpeg")
# assistant2.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561786/development/Documento_sin_t%C3%ADtulo_2_getpsv.pdf"), filename: "assistant2.pdf", content_type: "file/pdf")
assistant2.save!

assistant3 = Assistant.new(user_id: user5.id, skills: "Flexibility, Creativity", availability: 'Full-time', firstname: "Sarah", lastname: "Nachtingall")
assistant3.photo.attach(io: URI.open("https://images.unsplash.com/photo-1658932447761-8a59cd02d201?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant3.png", content_type: "image/jpeg")
# assistant3.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant3.pdf", content_type: "file/pdf")
assistant3.save!

assistant4 = Assistant.new(user_id: user6.id, skills: "Research Skills, Marketing", availability: 'Full-time', firstname: "Maria", lastname: "Kirolinko")
assistant4.photo.attach(io: URI.open("https://images.unsplash.com/photo-1597248374161-426f0d6d2fc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant4.png", content_type: "image/jpeg")
# assistant4.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant4.pdf", content_type: "file/pdf")
assistant4.save!

assistant5 = Assistant.new(user_id: user7.id, skills: "Languages, Administrative", availability: 'Full-time', firstname: "Abril", lastname: "Castañeda")
assistant5.photo.attach(io: URI.open("https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant5.png", content_type: "image/jpeg")
# assistant5.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant5.pdf", content_type: "file/pdf")
assistant5.save!

assistant6 = Assistant.new(user_id: user8.id, skills: "Responsibility, Customer service", availability: 'Part-time', firstname: "Jose", lastname: "Campoverde")
assistant6.photo.attach(io: URI.open("https://images.unsplash.com/photo-1623605931891-d5b95ee98459?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=594&q=80"), filename: "assistant6.png", content_type: "image/jpeg")
# assistant6.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant6.pdf", content_type: "file/pdf")
assistant6.save!

assistant7 = Assistant.new(user_id: user9.id, skills: "Flexibility, Content creation", availability: 'Part-time', firstname: "Austin", lastname: "Wade")
assistant7.photo.attach(io: URI.open("https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant7.png", content_type: "image/jpeg")
# assistant7.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant7.pdf", content_type: "file/pdf")
assistant7.save!

assistant8 = Assistant.new(user_id: user10.id, skills: "Flexibility, Design", availability: 'Full-time', firstname: "Simon", lastname: "Lohmann")
assistant8.photo.attach(io: URI.open("https://images.unsplash.com/photo-1613064756072-52b429a1e06f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant8.png", content_type: "image/jpeg")
# assistant8.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant8.pdf", content_type: "file/pdf")
assistant8.save!

assistant9 = Assistant.new(user_id: user11.id, skills: "Organization Skills", availability: 'Full-time', firstname: "Alex", lastname: "Supranoff")
assistant9.photo.attach(io: URI.open("https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant9.png", content_type: "image/jpeg")
# assistant9.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant9.pdf", content_type: "file/pdf")
assistant9.save!

assistant10 = Assistant.new(user_id: user12.id, skills: "Communication Skills", availability: 'Full-time', firstname: "Yannaty", lastname: "Kouth")
assistant10.photo.attach(io: URI.open("https://images.unsplash.com/photo-1654086438689-ac593fb9387a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=527&q=80"), filename: "assistant10.png", content_type: "image/jpeg")
# assistant10.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant10.pdf", content_type: "file/pdf")
assistant10.save!

assistant11 = Assistant.new(user_id: user13.id, skills: "Computer proficiency", availability: 'Full-time', firstname: "Laura", lastname: "Alonso")
assistant11.photo.attach(io: URI.open("https://images.unsplash.com/photo-1615751596346-9df8006e5381?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant11.png", content_type: "image/jpeg")
# assistant11.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant11.pdf", content_type: "file/pdf")
assistant11.save!

assistant12 = Assistant.new(user_id: user14.id, skills: "Customer service", availability: 'Full-time', firstname: "Jimena", lastname: "Rodriguez")
assistant12.photo.attach(io: URI.open("https://images.unsplash.com/photo-1639619628924-eced0acbab4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=583&q=80"), filename: "assistant12.png", content_type: "image/jpeg")
# assistant12.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant12.pdf", content_type: "file/pdf")
assistant12.save!

puts "Created ASSISTANTS"

offer1 = Offer.new(company_id: company1.id, title: 'Administrative assistant', location: 'Minnesota', description: 'Looking for a virtual assistant for 5 employees', cost_hour: 25, tag: 'Part-time')
offer1.save!
offer2 = Offer.new(company_id: company2.id, title: 'Organizational tasks', location: 'California', description: 'Need an assistant virtual assistant for 2 executives', cost_hour: 32, tag: 'Full-time')
offer2.save!
offer3 = Offer.new(company_id: company3.id, title: 'A remote bilingual assistant', location: 'Minnesota', description: 'Bilingual assistant for 3 people', cost_hour: 18, tag: 'Any')
offer3.save!
offer4 = Offer.new(company_id: company1.id, title: 'Writing/editing skilled assistant', location: 'San Francisco', description: 'In need for a elocuent writing/editing assistant for speeches', cost_hour: 20, tag: 'Full-time')
offer4.save!
offer5 = Offer.new(company_id: company4.id, title: 'Translating tasks', location: 'Sao Paulo', description: 'In need for a bilingual translating assistant for speeches', cost_hour: 20, tag: 'Full-time')
offer5.save!
puts "Created OFFERS"

application1 = Application.new(assistant_id: assistant1.id, offer_id: offer1.id, status: "Interview")
application1.save!
application2 = Application.new(assistant_id: assistant2.id, offer_id: offer2.id, status: "Interview")
application2.save!
application3 = Application.new(assistant_id: assistant1.id, offer_id: offer2.id, status: "Interview")
application3.save!
application4 = Application.new(assistant_id: assistant2.id, offer_id: offer1.id, status: "Pending")
application4.save!
application5 = Application.new(assistant_id: assistant1.id, offer_id: offer2.id, status: "Interview")
application5.save!

puts "Created APPLICATIONS"


review1 = Review.new(assistant_id: assistant1.id, content: 'Excellent assistant! Knows how to work in a team', rating: 5)
review1.save!
review22 = Review.new(assistant_id: assistant1.id, content: 'Very impressed by his organizational skills', rating: 5)
review22.save!
review23 = Review.new(assistant_id: assistant1.id, content: 'The assistant we needed as a group for a long time', rating: 5)
review23.save!
review24 = Review.new(assistant_id: assistant1.id, content: 'Very patient and mind-reading, knows everything!', rating: 5)
review24.save!

review2 = Review.new(assistant_id: assistant2.id, content: 'Amazing bilingual assistant!', rating: 4)
review2.save!
review3 = Review.new(assistant_id: assistant3.id, content: 'Good job!', rating: 4)
review3.save!
review4 = Review.new(assistant_id: assistant3.id, content: 'Works by standars', rating: 3)
review4.save!
review5 = Review.new(assistant_id: assistant4.id, content: 'Good admin skills', rating: 4)
review4.save!
review5 = Review.new(assistant_id: assistant4.id, content: 'Excellent assistant!', rating: 5)
review5.save!
review6 = Review.new(assistant_id: assistant5.id, content: 'Good admin skills', rating: 4)
review6.save!
review7 = Review.new(assistant_id: assistant5.id, content: 'Excellent assistant!', rating: 5)
review7.save!
review8 = Review.new(assistant_id: assistant6.id, content: 'Good admin skills', rating: 4)
review8.save!
review9 = Review.new(assistant_id: assistant6.id, content: 'Excellent assistant!', rating: 5)
review9.save!
review10 = Review.new(assistant_id: assistant7.id, content: 'Excellent assistant!', rating: 5)
review10.save!
review11 = Review.new(assistant_id: assistant7.id, content: 'Amazing bilingual assistant!', rating: 4)
review11.save!
review12 = Review.new(assistant_id: assistant8.id, content: 'Excellent assistant!', rating: 5)
review12.save!
review13 = Review.new(assistant_id: assistant8.id, content: 'Amazing bilingual assistant!', rating: 4)
review13.save!
review14 = Review.new(assistant_id: assistant9.id, content: 'Excellent assistant!', rating: 5)
review14.save!
review15 = Review.new(assistant_id: assistant9.id, content: 'Amazing bilingual assistant!', rating: 4)
review15.save!
review16 = Review.new(assistant_id: assistant10.id, content: 'Excellent assistant!', rating: 5)
review16.save!
review17 = Review.new(assistant_id: assistant10.id, content: 'Amazing bilingual assistant!', rating: 4)
review17.save!
review18 = Review.new(assistant_id: assistant11.id, content: 'Excellent assistant!', rating: 5)
review18.save!
review19 = Review.new(assistant_id: assistant11.id, content: 'Amazing bilingual assistant!', rating: 4)
review19.save!
review20 = Review.new(assistant_id: assistant12.id, content: 'Excellent assistant!', rating: 5)
review20.save!
review21 = Review.new(assistant_id: assistant12.id, content: 'Amazing bilingual assistant!', rating: 4)
review21.save!
puts "Created REVIEWS"

comment1 = Comment.new(title: 'Amazing Job', content: 'It allows people with skills like me all over the world be able to work remote/online', rating: 5, name: "Pedro", assistant_id: assistant1.id)
comment1.save!
comment2 = Comment.new(title: 'Great platform', content: 'I was able to work remote with an excellent salary and grow my skills', rating: 4, name: "Emma", assistant_id: assistant2.id)
comment2.save!
comment3 = Comment.new(title: 'Excellent', content: 'I am working remote with an excellent salary and getting to know great companies', rating: 5, name: "Sarah", assistant_id: assistant3.id)
comment3.save!
comment4 = Comment.new(title: 'Very thankful', content: 'I am working remote with an excellent salary and getting to know great companies', rating: 5, name: "Maria", assistant_id: assistant4.id)
comment4.save!
comment5 = Comment.new(title: 'The best service', content: 'I am working remote with an excellent salary and getting to know great companies', rating: 5, name: "Abril", assistant_id: assistant5.id)
comment5.save!
comment6 = Comment.new(title: 'Amazing Job', content: 'It allows people with skills like me all over the world be able to work remote/online', rating: 5, name: "Jose", assistant_id: assistant6.id)
comment6.save!
comment7 = Comment.new(title: 'Great platform', content: 'I was able to work remote with an excellent salary and grow my skills', rating: 4, name: "Austin", assistant_id: assistant7.id)
comment7.save!
comment8 = Comment.new(title: 'Excellent', content: 'I am working remote with an excellent salary and getting to know great companies', rating: 5, name: "Simon", assistant_id: assistant8.id)
comment8.save!
comment9 = Comment.new(title: 'Very thankful', content: 'I am working remote with an excellent salary and getting to know great companies', rating: 5, name: "Alex", assistant_id: assistant9.id)
comment9.save!
comment10 = Comment.new(title: 'The best service', content: 'I am working remote with an excellent salary and getting to know great companies', rating: 5, name: "Yannaty", assistant_id: assistant10.id)
comment10.save!

puts "Created COMMENTS"

puts "FINISH --- SEED CREATED"
