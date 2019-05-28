Rails.application.routes.draw do
  resources :servers
  resources :domains
  resources :facturations
  resources :registrars
  resources :cities
  resources :operations
  resources :premium_domains
  resources :reserved_domains
  resources :extensions
  resources :contacts
  resources :countries
  resources :tags
  resources :categories
  resources :tarifications
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
