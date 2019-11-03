Rails.application.routes.draw do
  get 'favorites/index'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'albums/show'
  get 'artists/show'
  get 'categories/show'
  get 'search/index'
  get 'search/new'
  get 'dashboard/index'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
