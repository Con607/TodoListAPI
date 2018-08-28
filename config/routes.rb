Rails.application.routes.draw do

  devise_for :users, defaults: { format: :json }
  
  resources :todos do
    resources :items
  end

  root to: "todos#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
