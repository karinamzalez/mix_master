Rails.application.routes.draw do
  root to: 'artists#index'
  resources :artists, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :songs, only: [:new]
  end 
end
