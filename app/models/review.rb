class Review < ApplicationRecord
  belongs_to :user
  belongs_to :game

  RATINGS = [*1..5].freeze
end
