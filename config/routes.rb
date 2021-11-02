Rails.application.routes.draw do
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  get 'blog', to: redirect("http://github.com/ruthgabrielle")

  resources :projects

  root 'pages#home'

  get '*patch', to: redirect("/error")
end
