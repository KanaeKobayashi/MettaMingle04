Rails.application.routes.draw do
  root "hello#index"
  resources :user_registration_authentications

  resources :user_account_lockings do
    post 'lock_account', on: :member
    post 'unlock_account', on: :member
  end
  # とりあえずshowアクションにルーティング。後で直す
  resources :user_account_trackings, only: [:show]
  # とりあえずnew と create アクションに対するルートを設定
  resources :user_password_reset_requests, only: [:new, :create]
end
