Rails.application.routes.draw do
  get 'pages/index1'
  get 'pages/index2'
  get 'pages/index3'
  get 'pages/index4'
  get 'pages/index5'
  get 'pages/index6'
  get 'pages/index7'
  get "/", to: "application#index"
end
