class Shim::PagesController < ActionController::Base
  unloadable

  def show
    render :template => params[:id]
  end
end
