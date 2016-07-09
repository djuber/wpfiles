Rails.application.routes.draw do
  resources :wordpresses, path: "wordpress"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
