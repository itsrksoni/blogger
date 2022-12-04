Rails.application.routes.draw do

    resources :articles, except: [:destroy]
    delete 'articles/:id/delete' => 'articles#destroy', as: 'articles_delete'
    get '/articles/:id/delete' => 'articles#destroy'

end
