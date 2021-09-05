Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :authors, :posts, only: [:index, :show, :new, :create, :edit, :update]


  get '/authors/:id', to: 'authors#show'
  get '/authors/new', to: 'authors#new'
  get '/authors/:id/edit', to: 'authors#edit'
  get '/authors', to: 'authors#index'
  post '/authors/new', to: 'authors#create'
  patch '/authors/:id', to: 'authors#update'

  get '/posts/:id', to: 'posts#show'
  get '/posts/new', to: 'posts#new'
  get '/posts/:id/edit', to: 'posts#edit'
  get '/posts', to: 'posts#index'
  post '/posts/new', to: 'posts#create'
  patch '/posts/:id', to: 'posts#update'



end
