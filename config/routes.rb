Rails.application.routes.draw do
  get 'products' => "products#show" #商品一覧表示
  get 'sell' => "products#sell" # 出品画面表示
  get 'profile' => "user#profile" # マイプロフィール表示
  get 'login' => "user#login" # ログイン表示
  get 'logout' => "user#logout" # ログアウト表示

  post 'products/create' => "products#create"
  
  root 'home#top' 
  get 'home/top' => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
