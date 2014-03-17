Audreycarlsen::Application.routes.draw do
  root 'welcome#index'

  get   '/',              to: 'welcome#index',   as: 'index', layout: false
  get   '/digital',       to: 'welcome#digital', as: 'digital'
  get   '/radio',         to: 'welcome#radio',   as: 'radio'
  get   '/blog',          to: 'posts#index',     as: 'blog'
  get   '/blog/new',      to: 'posts#new',       as: 'new_post'
  post  '/blog',          to: 'posts#create'
  get   '/blog/:id',      to: 'posts#show',      as: 'post'
  get   '/blog/:id/edit', to: 'posts#edit',      as: 'edit_post'
  patch '/blog/:id',      to: 'posts#update'
  get   '/about',         to: 'welcome#about',   as: 'about'

  # resources :posts
end
