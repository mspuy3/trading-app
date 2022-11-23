Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  authenticated :user, ->(user) { user.admin? } do
    get 'admin/index_user'
    get 'admin/edit_user'
    get 'admin/show_user'
    get 'admin/new_user'
    get 'admin/_form_user'
    get 'admin/pending_user'
    get 'admin/index_transactions'
  end
end
