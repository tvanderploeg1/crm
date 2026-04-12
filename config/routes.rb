Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "customers#index"
  get "customers/alphabetized" => "customers#alphabetized", as: :alphabetized
  get "customers/missing_email" => "customers#missing_email", as: :missing_email
end
