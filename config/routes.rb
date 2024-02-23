Rails.application.routes.draw do
  get 'products' => "products#show" #TODO
  get 'sell' => "products#sell"

  root 'home#top' 
  get 'home/top' => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
