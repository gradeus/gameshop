class Game < ApplicationRecord
  has_many :reviews

  enum categories: {
    video_game: 0,
    board_game: 1,
    party_game: 2
  }
end
