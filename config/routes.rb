Rails.application.routes.draw do

  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'error', to: 'pages#error'

  get 'blog', to: redirect("http://github.com/ruthgabrielle")

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root 'pages#home'

  get '*patch', to: redirect("/error")
end
