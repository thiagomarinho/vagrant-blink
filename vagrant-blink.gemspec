# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-blink/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-blink"
  spec.version       = VagrantBlink::VERSION
  spec.authors       = ["Thiago Marinho"]
  spec.email         = ["eu@thiagomarinho.net"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = 'Plugin to "blink" VMs i.e. destroy then create them.'
  spec.description   = 'Plugin to "blink" VMs i.e. destroy then create them. Uses built-in destroy and up commands.'
  spec.homepage      = "http://github.com/thiagomarinho"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
