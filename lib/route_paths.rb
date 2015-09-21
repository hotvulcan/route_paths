require "route_paths/version"

module RoutePaths
	class ActionController::Base
	  def route_paths
	    routes = Rails.application.routes.routes
	    routes.collect {|r| r.constraints.merge(r.defaults).merge({path:r.path.spec.to_s})}
	  end
	end
end
