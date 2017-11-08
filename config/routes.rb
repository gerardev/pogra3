Rails.application.routes.draw do
  resources :parqueos
  #get 'admin/index'

  #get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'parqueos/change', to: "parqueos#change"

  resources :users

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'login' => :destroy
  end
  root 'admin#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
