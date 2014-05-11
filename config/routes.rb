Audreycarlsen::Application.routes.draw do
  root 'welcome#index'

  get    '/',              to: 'welcome#index',   as: 'index', layout: false
  get    '/digital',       to: 'welcome#digital', as: 'digital'
  get    '/radio',         to: 'welcome#radio',   as: 'radio'
  get    '/code',          to: 'welcome#code',    as: 'code'
  get    '/blog',          to: 'posts#index',     as: 'blog'
  get    '/blog/new',      to: 'posts#new',       as: 'posts'
  post   '/blog/new',      to: 'posts#create'
  delete '/blog/:id',      to: 'posts#destroy',   as: 'delete_post'
  get    '/blog/:id',      to: 'posts#show',      as: 'post'
  get    '/blog/:id/edit', to: 'posts#edit',      as: 'edit_post'
  patch  '/blog/:id',      to: 'posts#update'
  get    '/about',         to: 'welcome#about',   as: 'about'

  get    '/log_in',        to: 'session#new',     as: 'log_in'
  post   '/log_in',        to: 'session#create',  as: 'sessions'
  get    '/log_out',       to: 'session#destroy', as: 'log_out'
end
