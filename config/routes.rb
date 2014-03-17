Audreycarlsen::Application.routes.draw do
  root 'welcome#index'

  get '/',       to: 'welcome#index',   as: 'index', layout: false
  get 'digital', to: 'welcome#digital', as: 'digital'
  get 'radio',   to: 'welcome#radio',   as: 'radio'
  get 'blog',    to: 'welcome#blog',    as: 'blog'
  get 'about',   to: 'welcome#about',   as: 'about'
end
