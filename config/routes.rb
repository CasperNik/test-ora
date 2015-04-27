# == Route Map
#
#                   Prefix Verb   URI Pattern               Controller#Action
#         new_user_session GET    /users/sign_in(.:format)  sessions#new
#             user_session POST   /users/sign_in(.:format)  sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format) sessions#destroy
# cancel_user_registration GET    /users/cancel(.:format)   registrations#cancel
#        user_registration POST   /users(.:format)          registrations#create
#    new_user_registration GET    /users/sign_up(.:format)  registrations#new
#   edit_user_registration GET    /users/edit(.:format)     registrations#edit
#                          PATCH  /users(.:format)          registrations#update
#                          PUT    /users(.:format)          registrations#update
#                          DELETE /users(.:format)          registrations#destroy
#                     root GET    /                         welcome#index
#                    blogs GET    /blogs(.:format)          blogs#index
#                          POST   /blogs(.:format)          blogs#create
#                 new_blog GET    /blogs/new(.:format)      blogs#new
#                edit_blog GET    /blogs/:id/edit(.:format) blogs#edit
#                     blog GET    /blogs/:id(.:format)      blogs#show
#                          PATCH  /blogs/:id(.:format)      blogs#update
#                          PUT    /blogs/:id(.:format)      blogs#update
#                          DELETE /blogs/:id(.:format)      blogs#destroy
#

Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', sessions: 'sessions'}

  root :to => 'welcome#index'

  resources :blogs

end
