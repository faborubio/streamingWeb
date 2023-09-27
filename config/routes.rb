Rails.application.routes.draw do
  get 'documentaryfilms/index'
  get 'documentaryfilms/create'
  get 'documentaryfilms/new'
  get 'series/index'
  get 'series/create'
  get 'series/new'
  get 'movies/index'
  get 'movies/create'
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "movies" => "movies#create"
  post "series" => "series#create"
  post "documentaryfilms" => "documentaryfilms#create"
  post "documentaryfilms" => "documentaryfilms#new"
end
