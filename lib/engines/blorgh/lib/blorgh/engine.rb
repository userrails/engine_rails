require 'devise'
module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh

    initializer "blorgh", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        #mount Blorgh::Engine, at: "/blorgh"
        mount Blorgh::Engine => "/blorgh"
      end

      config.paths["db/migrate"].expanded.each do |expanded_path|
         Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end

    config.to_prepare do
         Devise::SessionsController.layout "application"
       end
  end
end
