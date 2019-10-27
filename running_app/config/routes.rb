Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  resources :blog_posts
  root to: redirect('/blog_posts')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
