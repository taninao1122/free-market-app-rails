Rails.application.routes.draw do
  post 'products/create' => "products#create" # マイプロフィール表示
  post 'products/:id/delete' => "products#destory"

  get 'profile/:id' => "user#profile" # マイプロフィール表示
  get 'profile/edit' => "user#edit"

  # リソースを使ってルーティングを変更する
  get 'sell' => "products#sell" # 出品画面表示
  get 'login' => "sessions#new" # ログイン
  get 'logout' => "sessions#destory" # ログアウト
  get 'products' => "products#index"
  get 'products/:id/detail' => "products#detail"

  post 'login/create' => "sessions#create" # ログイン表示

  root 'home#top' 
  get 'home/top' => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
