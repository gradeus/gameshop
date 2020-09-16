class ReviewSerializer
  include FastJsonapi::ObjectSerializer

  attributes :comment, :rating
  attribute :user_name do |object|
    object.user.full_name
  end

  attribute :posted_at do |object|
    object.posted_at&.to_formatted_s(:rfc822)
  end

  attribute :game_name do |object|
    object.game.name
  end
end
