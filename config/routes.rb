Shim::Engine.routes.draw do
  match "*id" => 'pages#show', :as => :page, :format => false
  root :to => 'pages#show', :id => "index"
end
