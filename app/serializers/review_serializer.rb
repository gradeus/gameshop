class ReviewSerializer
  include FastJsonapi::ObjectSerializer

  attributes :comment, :rating, :posted_at
  attribute :user_name do |object|
    object.user.full_name
  end

  attribute :game_name do |object|
    object.game.name
  end
end
