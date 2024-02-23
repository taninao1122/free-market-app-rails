Rails.application.routes.draw do
  get 'products/index' #TODO
  get 'products/show'#TODO
  root 'home#top' 
  get 'home/top' => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
