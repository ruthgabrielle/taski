Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/about'
  get 'pages/home'
  resources :projects
end
