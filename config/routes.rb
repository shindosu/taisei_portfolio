Rails.application.routes.draw do
  get 'projects', to: 'projects#index', as: :projects
  get 'projects/:id', to: "projects#show", as: :project
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
