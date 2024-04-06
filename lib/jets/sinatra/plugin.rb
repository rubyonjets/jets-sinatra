require "jets"

module Jets::Sinatra
  module Plugin
    def self.registered(app)
      app.configure do
        Jets.boot # sets up autoloader
      end
    end
  end
end

Sinatra.register Jets::Sinatra::Plugin
