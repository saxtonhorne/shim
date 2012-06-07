module Shim
  class Engine < ::Rails::Engine
    isolate_namespace Shim
  end
end
