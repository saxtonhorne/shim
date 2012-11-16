class Shim::PagesController < ActionController::Base
  unloadable
  layout Proc.new { |controller|
    if controller.request.xhr?
      false
    else
      ::Shim.layout 
    end
  }

  rescue_from ActionView::MissingTemplate do |exception|
    if exception.message =~ %r{Missing template #{content_path}}
      # There's probably a better way to put both of these in the same handler,
      # but unless is the best I can com up with for now.
      raise ActionController::RoutingError, "No such page: #{params[:id]}" unless try_index
    else
      raise exception
    end
  end

  def show
    render :template => current_page
  end

  protected

  def current_page
    "#{content_path}#{clean_path}"
  end

  def clean_path
    path = Pathname.new "/#{params[:id]}"
    path.cleanpath.to_s[1..-1]
  end

  def content_path
    ::Shim.content_path
  end

  def try_index
    render :template => "#{current_page}/index"
  rescue ActionView::MissingTemplate 
    false
  end
end
