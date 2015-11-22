# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fakemenot/version'

Gem::Specification.new do |spec|
  spec.name          = "fakemenot"
  spec.version       = Fakemenot::VERSION
  spec.authors       = ["Glenn Espinosa"]
  spec.email         = ["glennpeter.espinosa@gmail.com"]

  spec.summary       = %q{Simple email validator that checks for valid DNS and email format.}
  spec.description   = %q{Fakemenot is an simple email validator that checks for DNS as well as uses regex functions to check the email for the right length and accepted characters. It utilizes the free Email Validator API over at mashape: https://market.mashape.com/pozzad/email-validator-1.}
  spec.homepage      = "http://github.com/gxespino/fakemenot"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "unirest"
end
