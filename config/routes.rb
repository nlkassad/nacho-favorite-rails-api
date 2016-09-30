Rails.application.routes.draw do
  resources :menu_items, except: [:new, :edit]
  resources :restaurants, except: [:new, :edit]
  resources :dishes, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # get '/dishes' => 'dishes#index'
end
