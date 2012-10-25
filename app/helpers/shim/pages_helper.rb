module Shim
  module PagesHelper
    def current_section
      params[:id].split("/").first
    end

    def nav_class(section)
      if current_section == section
        "current-page"
      else
        ""
      end
    end
  end
end
