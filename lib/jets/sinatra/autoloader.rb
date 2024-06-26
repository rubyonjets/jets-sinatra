require "zeitwerk"

module Jets
  module Sinatra
    class Autoloader
      class Inflector < Zeitwerk::Inflector
        def camelize(basename, _abspath)
          map = {cli: "CLI", version: "VERSION"}
          map[basename.to_sym] || super
        end
      end

      class << self
        def setup
          loader = Zeitwerk::Loader.new
          loader.inflector = Inflector.new
          lib = File.expand_path("../..", __dir__) # lib
          loader.push_dir(lib)
          loader.ignore("#{lib}/jets-sinatra.rb")
          loader.setup
        end
      end
    end
  end
end
