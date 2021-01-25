Rails.application.routes.draw do

  ######### TAGS ###############
  
  get '/tags', to: 'tags#index', as: 'tags'
  get '/tags/new', to: 'tags#new', as: 'new_tag'
  get '/tags/:id', to: 'tags#show', as: 'tag'
  get '/tags/:id/edit', to: 'tags#edit', as: 'edit_tag'

  # new '/tags/new', to: 'tags#new', as: 'new_tag
  # delete '/tags/:id', to: 'tags#destroy'
  # patch '/tags/:id', to: 'tags#update'
  # post '/tags', to: 'tags#create'

  ######### PICTURE TAGS ###############

  get '/picture_tags', to: 'picture_tags#index', as: 'picture_tags'
  get '/picture_tags/new', to: 'picture_tags#new', as: 'new_picture_tag'
  get '/picture_tags/:id', to: 'picture_tags#show', as: 'picture_tag'
  get '/picture_tags/:id/edit', to: 'picture_tags#edit', as: 'edit_picture_tag'

  # delete '/picture_tags/:id', to: 'picture_tags#destroy'
  # patch '/picture_tags/:id', to: 'picture_tags#update'
  # post '/picture_tags', to: 'picture_tags#create'
  
  ######### PICTURES ###############

  get '/pictures', to: 'pictures#index', as: 'pictures'
  get '/pictures/new', to: 'pictures#new', as: 'new_picture'
  post '/pictures', to: 'pictures#create'
  delete '/pictures/:id', to: 'pictures#destroy'
  patch '/pictures/:id', to: 'pictures#update'
  get '/pictures/:id', to: 'pictures#show', as: 'picture'
  get '/pictures/:id/edit', to: 'pictures#edit', as: 'edit_picture'

  ######### COMMENTS ###############


  get '/comments', to: 'comments#index', as: 'comments'
  get '/comments/new', to: 'comments#new', as: 'new_comment'
  get '/comments/:id', to: 'comments#show', as: 'comment'
  get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'

  # delete '/comments/:id', to: 'comments#destroy'
  # patch '/comments/:id', to: 'comments#update'
  # post '/comments', to: 'comments#create'

  ######### USERS ###############

  get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  delete '/users/:id', to: 'users#destroy'

end
