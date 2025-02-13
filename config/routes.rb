Rails.application.routes.draw do
  resources :staffs
  resources :customers
  resources :menus
  resources :reservations
  resources :notes
  resources :shifts
  resources :notifications
end