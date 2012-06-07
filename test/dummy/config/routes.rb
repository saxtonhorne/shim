Rails.application.routes.draw do

  mount Shim::Engine => "/shim"
end
