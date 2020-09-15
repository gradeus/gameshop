class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @user = User.first
    @games = Game.all
  end

  def create
    @review = Review.new()
  end

  private

  def review_params
    params.permit(
      :user_id,
      :game_id,
      :comment,
      :rating,
      :posted_at
    )
  end
end
