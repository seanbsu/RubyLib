Rails.application.routes.draw do

  root 'home#index'
  get 'adlib/adlib'
  get'home/sign_up'
end
