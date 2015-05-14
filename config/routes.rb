Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }
  resources :articles
  resources :settings, only: [:index, :update, :destroy]
  resources :pages, param: :name_key do
    member do
      put :hide
      put :reveal
    end
  end
  resources :mail_users, only: [:show, :new, :create, :destroy]
  root to: "articles#index"

  post '/upload_image', to: 'pages#upload_image'
  get '/:name_key', to: 'pages#show'
end
