Rails.application.routes.draw do

    root 'articles#index'
    

    resources :articles, except: [:destroy] do
        resources :comments#, only: [:create]
    end
    delete 'articles/:id/delete' => 'articles#destroy', as: 'articles_delete'
    get '/articles/:id/delete' => 'articles#destroy'

    resources :tags

    devise_for :users, controllers: {
        registrations: 'users/registrations'
    }


    get 'my_profile' => 'users#show', as: 'users_show'

end
