Rails.application.routes.draw do
  resources :prompts do
    resources :stories
  end
  root "prompts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
