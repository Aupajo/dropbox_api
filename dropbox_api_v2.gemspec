# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dropbox_api_v2/version'

Gem::Specification.new do |spec|
  spec.name          = "dropbox_api_v2"
  spec.version       = DropboxApiV2::VERSION
  spec.authors       = ["Jesús Burgos"]
  spec.email         = ["jesus@visrez.com"]

  spec.summary       = "Ruby client library to access Dropbox's API v2"
  spec.homepage      = "http://rubygems.org/gems/dropobox_api_v2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_dependency "oauth2", "~> 1.1.0"
  spec.add_dependency "faraday", ">= 0.8"
end
