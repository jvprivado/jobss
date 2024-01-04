Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "post/show"
post "post/create"
root 'post#index'
post "user/signin"
post "post/update"
get "post/register"
get "post/signin"
get "user/profile"
get "post/contact"

get "user/view"
  # Defines the root path route ("/")
  # root "articles#index"
end
