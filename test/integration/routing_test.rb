require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest
  def setup
    @routes = Shim::Engine.routes
  end

  def test_index_route
    assert_routing "", { :controller => "shim/pages", :action => "show", :id => "index" } 
  end
  
  def test_page_route
    assert_routing "some-page", { :controller => "shim/pages", :action => "show", :id => "some-page" }
  end

  def test_routes_with_slashes
    assert_routing "some/nested/path-thing", { :controller => "shim/pages", :action => "show", :id => "some/nested/path-thing" }
  end
end
