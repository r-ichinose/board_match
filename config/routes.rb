Rails.application.routes.draw do
  root "boards#index"  # トップページをBoardsの一覧に設定

  resources :users, only: [:show]
  resources :boards, only: [:index, :show]
  resources :favorites, only: [:index, :create, :destroy]
  resources :recs, only: [:index]
  resources :reviews, only: [:create]
end
