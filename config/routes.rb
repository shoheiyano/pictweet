Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"
  namespace :tweets do
    resources :searches, only: :index
  end
  resources :tweets do
    resources :comments, only: [:create] #ここはあくまでコメンツコントローラー。ツイーツは上や
  end
  resources :users, only: :show
end
