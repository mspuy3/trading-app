Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  authenticated :user, -> (user) { user.admin? } do
    get 'admin/index_user'
    #approving pending users
    put 'admin/index_user', to: 'admin#suspend_user'
    get 'admin/edit_user'
    get 'admin/show_user'
    #show user details
    get 'admin/show_user/:id', to: 'admin#show_user'
    #edit and update user details
    get 'admin/show_user/:id/edit', to: 'admin#edit_user'
    put 'admin/show_user', to: 'admin#update_user'
    #create new user
    get 'admin/new_user', to: 'admin#new_user'
    post 'admin/new_user', to: 'admin#create_user'
    #
    get 'admin/_form_user'
    #showing pending users
    get 'admin/pending_user'
    #approving pending users
    put 'admin/pending_user', to: 'admin#approve_user'
    #showing all transactions
    get 'admin/index_transactions'
  end
end
