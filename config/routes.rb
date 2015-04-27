# == Route Map
#
#                   Prefix Verb   URI Pattern                 Controller#Action
#         new_user_session GET    /users/sign_in(.:format)    sessions#new
#             user_session POST   /users/sign_in(.:format)    sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)   sessions#destroy
# cancel_user_registration GET    /users/cancel(.:format)     registrations#cancel
#        user_registration POST   /users(.:format)            registrations#create
#    new_user_registration GET    /users/sign_up(.:format)    registrations#new
#   edit_user_registration GET    /users/edit(.:format)       registrations#edit
#                          PATCH  /users(.:format)            registrations#update
#                          PUT    /users(.:format)            registrations#update
#                          DELETE /users(.:format)            registrations#destroy
#                     root GET    /                           welcome#index
#                    blogs GET    /blogs(.:format)            blogs#index
#                          POST   /blogs(.:format)            blogs#create
#                 new_blog GET    /blogs/new(.:format)        blogs#new
#                edit_blog GET    /blogs/:id/edit(.:format)   blogs#edit
#                     blog GET    /blogs/:id(.:format)        blogs#show
#                          PATCH  /blogs/:id(.:format)        blogs#update
#                          PUT    /blogs/:id(.:format)        blogs#update
#                          DELETE /blogs/:id(.:format)        blogs#destroy
#                  recipes GET    /recipes(.:format)          recipes#index
#                          POST   /recipes(.:format)          recipes#create
#               new_recipe GET    /recipes/new(.:format)      recipes#new
#              edit_recipe GET    /recipes/:id/edit(.:format) recipes#edit
#                   recipe GET    /recipes/:id(.:format)      recipes#show
#                          PATCH  /recipes/:id(.:format)      recipes#update
#                          PUT    /recipes/:id(.:format)      recipes#update
#                          DELETE /recipes/:id(.:format)      recipes#destroy
#                  reviews GET    /reviews(.:format)          reviews#index
#                          POST   /reviews(.:format)          reviews#create
#               new_review GET    /reviews/new(.:format)      reviews#new
#              edit_review GET    /reviews/:id/edit(.:format) reviews#edit
#                   review GET    /reviews/:id(.:format)      reviews#show
#                          PATCH  /reviews/:id(.:format)      reviews#update
#                          PUT    /reviews/:id(.:format)      reviews#update
#                          DELETE /reviews/:id(.:format)      reviews#destroy
#

Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', sessions: 'sessions'}

  root :to => 'welcome#index'

  resources :blogs
  resources :recipes
  resources :reviews

end
