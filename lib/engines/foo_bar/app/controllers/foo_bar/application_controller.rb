module FooBar
  class ApplicationController < ActionController::Base
 # This is useful when we need base app, application controller
 # class ApplicationController < ::ApplicationController
  	layout "application"
  end
end
