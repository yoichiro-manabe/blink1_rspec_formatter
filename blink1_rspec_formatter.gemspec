# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blink1_rspec_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = "blink1_rspec_formatter"
  spec.version       = Blink1RspecFormatterVersion::VERSION
  spec.authors       = ["ymanabe"]
  spec.email         = ["ymanabe@beaglesoft.net"]

  spec.summary       = %q{Blink the blink1 at executed rspec finished.}
  spec.description   = %q{Blink the blink1 at executed rspec finished..}
  spec.homepage      = "https://github.com/yoichiro-manabe/blink1-rspec-formatter"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rb-blink1"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
