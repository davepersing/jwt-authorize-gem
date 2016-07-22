# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "moonbeam_jwt_authorize/version"

Gem::Specification.new do |spec|
  spec.name          = "moonbeam_jwt_authorize"
  spec.version       = MoonbeamJwtAuthorize::VERSION
  spec.authors       = ["Dave Persing"]
  spec.email         = ["persing@adobe.com"]

  spec.summary       = "Provides a common library for Moonbeam JWT authorization
                          to be used by Smoothie, Moonbeam, and Conduit."
  spec.homepage      = "https://github.com/adobe-platform/moonbeam-jwt-authorize"

  # Prevent pushing this gem to RubyGems.org.
  # To allow pushes either set the 'allowed_push_host' to allow pushing to a single host
  # or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    fail "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"

  spec.add_dependency "jwt", "~> 1.5"
end
