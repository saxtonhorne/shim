class Shim::PagesController < ActionController::Base
  def show
    render :template => params[:id]
  end
end
