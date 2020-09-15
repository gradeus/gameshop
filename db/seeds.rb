users = User.create([
  { first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email },
  { first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email },
  { first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email },
  { first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email },
  { first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email }
])

games = Game.create([
  { name: 'Sekiro: Shadows Die Twice', category: Game.categories[:video_game], description: 'Sekiro: Shadows Die Twice is an action-adventure video game developed by FromSoftware and published by Activision.' },
  { name: 'Exploding Kittens', category: Game.categories[:board_game], description: 'Exploding Kittens is a highly-strategic, kitty-powered version of Russian Roulette.' },
  { name: 'Beer Pong', category: Game.categories[:party_game], description: 'Beer pong, also known as Beirut, is a drinking game in which players throw a ping pong ball across a table with the intent of landing the ball in a cup of beer on the other end.' },
  { name: 'The Legend of Zelda: A Link to the Past', category: Game.categories[:video_game], description: 'The Legend of Zelda: A Link to the Past is an action-adventure game developed and published by Nintendo for the Super Nintendo Entertainment System.' },
  { name: 'Charades', category: Game.categories[:party_game], description: 'Charades is a parlor or party word guessing game.' },
  { name: 'Dungeons & Dragons', category: Game.categories[:board_game], description: 'Dungeons & Dragons is a fantasy tabletop role-playing game originally designed by Gary Gygax and Dave Arneson.' }
])

100.times do
  sentiments = {
    5 => ['Excellent game!', 'Would play it all the time', 'I had such a great time with this classic', 'I would never get bored. I have played it for hours!'],
    4 => ['Very good game', 'Liked it', 'Recommended', 'I would play it again with my friends'],
    3 => ['It could be better', 'I got bored pretty quickly', 'Would not recommend it'],
    2 => ['So boooring!', 'This game sucks', 'Never liked it'],
    1 => ['It was a wast of time and money', 'I would not bother playing this again', 'Worst game ever!!!']
  }

  rating = [*1..5].sample
  Review.create([
    user: users.sample,
    game: games.sample,
    rating: rating,
    comment: sentiments[rating].sample,
    posted_at: rand(3.years).seconds.ago
  ])
end
