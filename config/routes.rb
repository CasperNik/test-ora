# == Route Map
#
#                   Prefix Verb   URI Pattern               Controller#Action
#         new_user_session GET    /users/sign_in(.:format)  devise/sessions#new
#             user_session POST   /users/sign_in(.:format)  devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format) devise/sessions#destroy
# cancel_user_registration GET    /users/cancel(.:format)   devise/registrations#cancel
#        user_registration POST   /users(.:format)          devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)  devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)     devise/registrations#edit
#                          PATCH  /users(.:format)          devise/registrations#update
#                          PUT    /users(.:format)          devise/registrations#update
#                          DELETE /users(.:format)          devise/registrations#destroy
#                     root GET    /                         welcome#index
#

Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
end
