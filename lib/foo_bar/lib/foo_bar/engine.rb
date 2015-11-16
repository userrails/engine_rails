module FooBar
  class Engine < ::Rails::Engine
    isolate_namespace FooBar

    #This is useful to load plugin automatically in rake routes, db:migrate, etc
    initializer "foo_bar", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount FooBar::Engine, at: "/foo_bar"
      end

      config.paths["db/migrate"].expanded.each do |expanded_path|
         Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end

    #This is useful when we want to load some other files like app/services, app/workers, etc automatically which is inside lib/foobar.rb
    initializer "foo_bar", after: :load_config_initializers do |app|
      FooBar.load_files.each { |file|
        require_relative File.join("../..", file)
      }
    end
    
  end
end
