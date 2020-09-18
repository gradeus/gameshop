Rails.application.routes.draw do
  root to: redirect('/reviews')
  devise_for :users
  resources :reviews, only: %i[index new create]
end
