Rails.application.routes.draw do

  # root 'cosmetic_products#index'
   # get '/cosmetic_products' => 'cosmetic_products#index'

   # get '/users' => 'users#index'

resources :cosmetic_products, except: [:new, :edit] do

  end

resources :users, except: [:new, :edit] do

  end

resources :categories, except: [:new, :edit] do
end

end

