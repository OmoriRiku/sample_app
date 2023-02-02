Rails.application.routes.draw do
  # 投稿画面
  get 'lists/new'
  post 'lists' => 'lists#create'
  
  # 一覧画面
  get 'lists' => 'lists#index'
  
  # 詳細画面
  get 'lists/:id' => 'lists#show', as: 'list'
  
  # 編集画面
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  get '/top' => 'homes#top'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
