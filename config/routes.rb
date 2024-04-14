Rails.application.routes.draw do

  get 'lists/new'
  # post 'lists' => 'lists#create'

  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/edit'
  # get '/top' => 'homes#top'

  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch'lists/:id' => 'lists#update', as: 'update_list'
end
