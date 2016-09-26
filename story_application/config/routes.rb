Rails.application.routes.draw do
  devise_for :users
  resources :prompts do
    resources :stories
  end

  root "categories#index"

  get '/mystery', to: 'categories#mystery'
  get '/comedy', to: 'categories#comedy'
  get '/fantasy', to: 'categories#fantasy'
  get '/horror', to: 'categories#horror'
  get '/flash_fiction', to: 'categories#flash_fiction'
end
