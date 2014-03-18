Audreycarlsen::Application.routes.draw do
  root 'welcome#index'

  get   '/',              to: 'welcome#index',   as: 'index', layout: false
  get   '/digital',       to: 'welcome#digital', as: 'digital'
  get   '/radio',         to: 'welcome#radio',   as: 'radio'
  get   '/blog',          to: 'posts#index',     as: 'blog'
  get   '/blog/new',      to: 'posts#new',       as: 'posts'
  post  '/blog/new',      to: 'posts#create'
  get   '/blog/:id',      to: 'posts#show',      as: 'post'
  get   '/blog/:id/edit', to: 'posts#edit',      as: 'edit_post'
  patch '/blog/:id',      to: 'posts#update'
  get   '/about',         to: 'welcome#about',   as: 'about'

  get   '/log_in',        to: 'session#new',     as: 'log_in'
  get   '/log_out',       to: 'session#destroy', as: 'log_out'
end
