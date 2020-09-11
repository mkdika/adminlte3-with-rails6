Rails.application.routes.draw do
  resources :people
  root 'people#index'

  namespace :api do
    defaults format: :json do
      get 'people/search', to: 'people#search'
    end
  end
end
