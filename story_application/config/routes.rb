Rails.application.routes.draw do
  resources :prompts
  root "prompts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
