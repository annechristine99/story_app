Rails.application.routes.draw do
  devise_for :users
  resources :prompts do
    resources :stories
  end

  root "stories#index"

  get '/flash_fiction', to: 'categories#flash_fiction'
end
