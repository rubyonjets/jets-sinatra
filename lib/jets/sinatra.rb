# frozen_string_literal: true

$:.unshift(File.expand_path("..", __dir__))

require "jets/sinatra/autoloader"
Jets::Sinatra::Autoloader.setup

require "memoist"
require "rainbow/ext/string"
require "sinatra"

module Jets
  module Sinatra
    class Error < StandardError; end
  end
end

require "jets/sinatra/plugin"
