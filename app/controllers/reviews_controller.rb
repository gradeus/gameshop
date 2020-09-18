class ReviewsController < ApplicationController
  def index
    @reviews = Review.order(created_at: :desc)
    @reviews = ReviewSerializer.new(@reviews).serializable_hash
  end

  def new
    @games = Game.all
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      render json: 'Review created successfully!', status: :created
    else
      message = "Couldn't create your review. #{@review.errors.full_messages.to_sentence}"
      render json: message, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params
      .require(:review)
      .permit(
        :user_id,
        :game_id,
        :comment,
        :rating,
        :posted_at
      )
  end
end
