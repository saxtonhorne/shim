require 'active_support/configurable'

module Shim
  class Configuration
    include ActiveSupport::Configurable
    config_accessor :active_nav_class
  end
end
