Rails.application.routes.draw do
  
	get 'pages/home' => 'pages#home'
	get 'pages/about' => 'pages#about'

	# root to: 'pages/home'

end
