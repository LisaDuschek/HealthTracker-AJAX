Rails.application.routes.draw do

    root :to =>'foods#index'


    resources:foods do
      resources:calories

    end

    resources:exercises do
      resources:calories

    end

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'


    get '/signup' => 'users#new'
    post '/users' => 'users#create'



end
