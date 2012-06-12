require "shim/version"

module Shim
  mattr_accessor :layout, :content_path
  @@content_path = "shim/"
  @@layout = "application"

  def config(&block)
    if block.arity == 1
      self[&block]
    else
      instance_eval &block
    end
  end

  require 'shim/engine'
end
