Rails.application.routes.draw do
  get 'user_interests/new'
  get 'user_interests/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   namespace :api do
    namespace :v1 do
      resources :users
      resources :interests
      resources :matches
   resources :preferences
   resources :user_interests, only: [:edit, :update]
    end
  end
   
  
   
   
end
