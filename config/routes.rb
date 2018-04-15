Rails.application.routes.draw do
  devise_for :users,
              path: '',
              path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'}

  root 'pages#home'
end
