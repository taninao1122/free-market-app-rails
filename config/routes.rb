Rails.application.routes.draw do
  post 'products/:id/delete' => "products#destory"
  
  get 'profile/edit' => "user#edit"
  get 'products' => "products#index"
  # リソースを使ってルーティングを変更する
  get 'sell' => "products#sell" # 出品画面表示
  get 'profile' => "user#profile" # マイプロフィール表示
  get 'login' => "sessions#new" # ログイン
  get 'logout' => "sessions#destory" # ログアウト

  post 'login/create' => "sessions#create" # ログイン表示

  root 'home#top' 
  get 'home/top' => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
