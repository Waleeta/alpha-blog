Rails.application.routes.draw do
  
  resources :articles
	get 'pages/home' => 'pages#home'
	get 'pages/about' => 'pages#about'

	root to: 'pages#home'

end
