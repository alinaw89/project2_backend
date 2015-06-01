Rails.application.routes.draw do

  # root 'makeup_products#index'
   # get '/makeup_products' => 'makeup_products#index'

   # get '/users' => 'users#index'

resources :makeup_products, except: [:new, :edit] do

  end

resources :users, except: [:new, :edit] do

  end

end

