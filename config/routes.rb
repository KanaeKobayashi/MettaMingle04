Rails.application.routes.draw do
  root "hello#index"
  resources :user_registration_authentications

  resources :user_account_lockings do
    post 'lock_account', on: :member
    post 'unlock_account', on: :member
  end
  get "user_profiles/show", to: 'user_profiles#show'
  # とりあえずshowアクションにルーティング。後で直す
  resources :user_account_trackings, only: [:show]
  # とりあえずnew と create アクションに対するルートを設定
  resources :user_password_reset_requests, only: [:new, :create]
  # とりあえずnew と create アクションに対するルートを設定
  resources :user_registrations, only: [:new, :create]
 # 質問関連
 resources :questions, only: [:index, :new, :create, :show]
end
