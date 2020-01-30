Rails.application.routes.draw do
  get 'books/show' => 'books#show'
  get 'books/edit' => 'books#edit'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  # こう言うふうに書けばいい

  delete 'books/:id' => 'books#destroy', as: 'destroy_book'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  #投稿されたとき、createメソッド使う
  get 'books/:id' => 'books#show' , as: 'books'
  # ここが分かっていません
end
