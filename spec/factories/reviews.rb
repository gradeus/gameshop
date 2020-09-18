FactoryBot.define do
  factory :review do
    user
    game
    rating { 5 }
    comment { 'Best Game Ever!' }
    posted_at { rand(3.years).seconds.ago }
  end
end
