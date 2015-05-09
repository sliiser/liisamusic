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
  root to: "articles#index"

  get '/:name_key', to: 'pages#show'
end
