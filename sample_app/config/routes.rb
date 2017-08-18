Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about' # add in a route for the new about page

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'static_pages/contact'

  root 'static_pages#home'
end
