Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  authenticate :user do
    resources :timelines, only: [:index, :show],
    param: :username
    resources :posts, only: [:create, :show]
  end
  # API routes
  namespace :api do
    namespace :v1 do
      resources :places, only: [:index]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
