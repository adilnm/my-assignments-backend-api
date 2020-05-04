Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :assignments
    end
  end
  namespace :api do
    namespace :v1 do
      resources :courses
    end
  end
  namespace :api do
    namespace :v1 do
      root to: 'courses#index'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
