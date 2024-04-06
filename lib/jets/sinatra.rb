# frozen_string_literal: true

$:.unshift(File.expand_path("..", __dir__))

require "jets/sinatra/autoloader"
Jets::Sinatra::Autoloader.setup

require "memoist"
require "rainbow/ext/string"

module Jets
  module Sinatra
    class Error < StandardError; end
  end
end
