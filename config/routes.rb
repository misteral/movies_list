Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :movies do
        get :favorite
        get :unfavorite
      end
    end
    resources :movies
    resources :gentres
  end

  namespace :admin do
    root to: 'movies#index'
    resources :users do
      resources :movies, only: [:index]
    end
    resources :movies
    resources :gentres
  end
end
