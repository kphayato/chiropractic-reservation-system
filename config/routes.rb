Rails.application.routes.draw do
  # CRUD のルーティングを `resources` で管理
  resources :staffs
  resources :customers
  resources :menus
  resources :reservations
  resources :notes
  resources :shifts
  resources :notifications

  # アプリのヘルスチェック
  get "up" => "rails/health#show", as: :rails_health_check

  # ルートページ（例: スタッフ一覧をトップページにする）
  root "staffs#index"
end