module FooBar
  class Engine < ::Rails::Engine
    isolate_namespace FooBar

    initializer "foo_bar", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount FooBar::Engine, at: "/foo_bar"
      end

      config.paths["db/migrate"].expanded.each do |expanded_path|
	    Rails.application.config.paths["db/migrate"] << expanded_path
	  end
    end
  end
end
