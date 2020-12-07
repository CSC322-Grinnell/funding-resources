Rails.application.routes.draw do
  get 'showcase/index'
  root to: "pages#home"
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :resources
  resources :search, only: [:index]

  get'/contact', to:'pages#contact', as:'contact'
  get'/faqs', to:'pages#faqs', as:'faqs'
  get '/news', to:'pages#news', as:'news'
  get '/funds', to:'pages#funds', as:'funds'
  get '/browse', to:'search#index', as:'browse'
  get 'resources/new', to:'resources#new', as:'new'
end
