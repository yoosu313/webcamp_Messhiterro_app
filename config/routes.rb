Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :postimages, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
end
