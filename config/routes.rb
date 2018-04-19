Rails.application.routes.draw do
  devise_for :users,
              path: '',
              path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'}

  root 'pages#home'

  resources :games, only: [:create, :update, :show] do
    resources :letters, only: [:create]
  end

  get '/new_game' => 'games#new'
end
