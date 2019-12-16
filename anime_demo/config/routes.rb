Rails.application.routes.draw do
  get 'animes' => 'animes#index'
  get 'animes/new' => 'animes#new'
  post 'animes' => 'animes#create'
  get 'animes/:id' => 'animes#show'
  get 'animes/:id/edit' => 'animes#edit'
  patch 'animes/:id' => 'animes#update'
  delete 'animes/:id' => 'animes#destroy'
end
