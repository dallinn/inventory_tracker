Rails.application.routes.draw do

  resources :items do  
    resources :comments
  end
end
