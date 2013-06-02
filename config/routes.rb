HammerAdmin::Application.routes.draw do
  root to: "admin#index"

  devise_for :admin, path_names: {sign_in: 'login', sign_out: 'logout'}
  
  namespace :admin do

    resources :baseconfigs, only: [:index, :edit, :update]  

  end 
  get 'admin', to: 'admin#index'
  
end
