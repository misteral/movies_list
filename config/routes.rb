Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :movies do
        get :favorite
      end
    end
    resources :movies
    resources :gentres
  end

  namespace :admin do
    resources :users
    resources :movies
    resources :gentres
  end
end
