module FooBar
  class Engine < ::Rails::Engine
    isolate_namespace FooBar
  end
end
