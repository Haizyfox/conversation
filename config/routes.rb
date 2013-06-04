Memevine::Application.routes.draw do
  resources :vine_memes
  get '/', to: 'home#index', as: :root
  get '/:id', to: 'home#index', as: :meme
end
