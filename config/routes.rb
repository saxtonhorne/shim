Shim::Engine.routes.draw do
  match "/*id" => 'pages#show', :as => :page, :format => false
end
