Rails.application.routes.draw do
  
  get 'users_controller/new'
  root to: 'static_pages#home'

  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/about/moi', to: 'static_pages#about_moi', as:'moi'
  get '/about/mon_groupe', to: 'static_pages#about_mon_groupe', as: 'mon_groupe'
  get '/new_user', to: 'users_controller#new', as: 'new_user'
  post '/user', to: 'users_controller#user', as: 'user'
  get '/user/:id', to: 'users_controller#show', as: 'show'

end

