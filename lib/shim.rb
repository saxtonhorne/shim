require "shim/version"
require "shim/configuration"

module Shim
  mattr_accessor :layout, :content_path, :configuration
  @@content_path = "shim/"
  @@layout = "application"
  @@configuration = Shim::Configuration.configure do |config|
    config.active_nav_class = "current-page"
    config
  end

  require 'shim/engine'
end
