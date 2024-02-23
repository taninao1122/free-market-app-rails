Rails.application.routes.draw do
  get 'products' => "products#show" #TODO
  get 'sell' => "products#sell"
  get 'profile' => "user#profile"
  get 'login' => "user#login"
  get 'logout' => "user#logout"
  
  root 'home#top' 
  get 'home/top' => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
