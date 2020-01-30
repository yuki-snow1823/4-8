Rails.application.routes.draw do
  get 'books/show' => 'books#show'
  get 'books/edit' => 'books#edit'
  get 'books/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  #投稿されたとき、createメソッド使う
  get 'books/:id' => 'books#show' , as: 'book'
  # ここが分かっていません
end
