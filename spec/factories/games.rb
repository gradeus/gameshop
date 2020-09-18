FactoryBot.define do
  factory :game do
    name { 'Sekiro: Shadows Die Twice' }
    category { Game.categories[:video_game] }
    description { 'Sekiro: Shadows Die Twice is an action-adventure video game developed by FromSoftware and published by Activision.' }
  end
end
