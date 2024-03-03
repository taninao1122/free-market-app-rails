Rails.application.routes.draw do
  post 'products/:id/delete' => "products#destory"
  
  get 'profile/edit' => "user#edit"
  get 'products' => "products#index"
  get 'sell' => "products#sell" # 出品画面表示
  get 'profile' => "user#profile" # マイプロフィール表示
  get 'login' => "user#login" # ログイン表示
  get 'logout' => "user#logout" # ログアウト表示


  root 'home#top' 
  get 'home/top' => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
