Rails.application.routes.draw do
  root to: redirect('/reviews')
  resources :reviews
end
