require 'bootstrap-sass/engine'
require 'spree/core'
require 'spree/frontend'

module Tshop
  class Engine < ::Rails::Engine

    isolate_namespace Tshop
    engine_name 'tshop'

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end
  end
end
