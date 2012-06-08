require "shim/version"

module Shim
  class << self
    attr_accessor :layout, :content_path
    @layout = "application"
    @content_path = "shim/"

    def config(&block)
      if block.arity == 1
        self[&block]
      else
        instance_eval &block
      end
    end
  end

  require 'shim/engine'
end
