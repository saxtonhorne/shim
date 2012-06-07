require 'thor'

module Shim
  class CLI < Thor
    include Thor::Actions
    
    check_unknown_options!

    desc "install [DIRECTORY]", "Creates a shim directory in your app and initializes a basic site."
    def install
      Shim.install!
    end

    desc "watch", "Watches the app/shim directory for changes and automatically re-compiles as necessary"
    def watch
      Shim.watch!
    end
  end
end
