Rails.application.routes.draw do
  devise_for :models
  root 'post#index'

  get 'post/post'

  get 'post/edit/:id' => 'post#edit'

  get 'post/update/:id' => 'post#update'

  get 'post/comment/:id' => 'post#comment'

  delete 'post/delete/:id' => 'post#delete'
end
