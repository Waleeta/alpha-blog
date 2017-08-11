Rails.application.routes.draw do
  
  resources :articles
  resources :users
	  get "login/new", :to => "login#new"
	  get "login", :to => "login#destroy"
	  post "login", :to => "login#create", action: "login"
	  delete "login", :to => "login#destroy", as: "logout"
	  get "authenticate/login", :to => "authentication#new"
	  post "authenticate", :to => "authentication#create"
	  delete "authenticate", :to => "authenticate#destroy"

	get 'index/home' => 'index#home'
	get 'index/about' => 'index#about'

	root to: 'index#home'

end
