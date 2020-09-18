require 'rails_helper'

RSpec.describe "Reviews", type: :request do
  let(:user) { FactoryBot.create(:user) }

  before do
    sign_in user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get reviews_url
      expect(response).to have_http_status(:success)
    end

    it 'lists all reviews' do
      reviews = FactoryBot.create_list(:review, 10)
      get reviews_url
      expect(response.body).to include(*reviews.map(&:comment))
    end

    it 'has a link to create a new review' do
      get reviews_url
      expect(response.body).to include('+ New')
    end
  end

  describe 'POST /new' do
    it 'creates a new review' do
      game = FactoryBot.create(:game)
      review = FactoryBot.build(:review, user: user, game: game)
      params = {
        review: {
          game_id: review.game.id,
          user_id: user.id,
          rating: review.rating,
          comment: review.comment,
          posted_at: review.posted_at
        }
      }

      expect { post reviews_url, params: params }.to change(Review, :count).by(1)
    end
  end
end
