Rails.application.routes.draw do
  # Recipe's Controller Routes
  namespace :api do
    namespace :v1 do
      get 'recipes/index'
      post 'recipes/create'
      get '/show/:id', to: 'recipes#show'
      delete '/destroy/:id', to: 'recipes#destroy'
    end
  end
  
  # Index Route
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end