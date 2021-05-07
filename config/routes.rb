Rails.application.routes.draw do
  #一覧画面へのルーティング
  # get "/users", to: "users#index"
  # #新規投稿画面へのルーティング
  # get "/users/new", to: "users#new"
  # #新規登録を行うためのルーティング
  # post "/users", to: "users#create"
  # #削除を行うためのルーティング
  # delete "/users/:id", to: "users#destroy"
  # #編集画面へのルーティング
  # get "/users/:id/edit", to: "users#edit"
  # #更新画面のルーティング
  # patch "/users/:id", to: "users#update"
  # #詳細情報を表示するためのルーティング
  # get "/users/:id", to: "users#show"

  #resourcesを使う
  resources :users
end
