Memevine::Application.routes.draw do
  resources :vine_memes
  get '/', to: 'home#index', as: :root
  get '/:id', to: 'home#index', as: :convo
  get '/new', to: 'home#index', as: :new_convo
end
