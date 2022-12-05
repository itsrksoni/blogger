Rails.application.routes.draw do
    root 'application#index'

    resources :articles, except: [:destroy] do
        resources :comments, only: [:create]
    end
    delete 'articles/:id/delete' => 'articles#destroy', as: 'articles_delete'
    get '/articles/:id/delete' => 'articles#destroy'
    resources :tags, only: [:show]

end
