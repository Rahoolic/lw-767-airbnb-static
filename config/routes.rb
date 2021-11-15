Rails.application.routes.draw do
  root to: 'flats#index'

  # /http://localhost/show/2
  # get :show, to: 'flats#show', as: :flat
  get 'show/:id', to: 'flats#show', as: :show
end
