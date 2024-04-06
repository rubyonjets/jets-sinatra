# frozen_string_literal: true

require_relative "lib/jets/sinatra/version"

Gem::Specification.new do |spec|
  spec.name = "jets-sinatra"
  spec.version = Jets::Sinatra::VERSION
  spec.authors = ["Tung Nguyen"]
  spec.email = ["tongueroo@gmail.com"]

  spec.summary = "Jets Sinatra Support"
  spec.homepage = "https://github.com/rubyonjets/jets-sinatra"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "dotenv"
  spec.add_dependency "memoist"
  spec.add_dependency "rainbow"
  spec.add_dependency "sinatra"
  spec.add_dependency "zeitwerk"
end