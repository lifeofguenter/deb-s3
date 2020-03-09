$:.unshift File.expand_path("../lib", __FILE__)
require "deb/s3"

Gem::Specification.new do |gem|
  gem.name        = "deb-s3-patched"
  gem.version     = Deb::S3::VERSION

  gem.author      = "Gunter Grodotzki"
  gem.email       = "gunter@grodotzki.com"
  gem.homepage    = "https://github.com/lifeofguenter/deb-s3"
  gem.summary     = "Easily create and manage an APT repository on S3."
  gem.description = gem.summary
  gem.license     = "MIT"
  gem.executables = "deb-s3"

  gem.files = Dir["**/*"].select { |d| d =~ %r{^(README|bin/|ext/|lib/)} }

  gem.required_ruby_version = '>= 2.5.5'

  gem.add_dependency "thor",    "~> 0.19.0"
  gem.add_dependency "aws-sdk", "~> 3"
  gem.add_development_dependency "minitest", "~> 5"
  gem.add_development_dependency "rake", "~> 13"
end
