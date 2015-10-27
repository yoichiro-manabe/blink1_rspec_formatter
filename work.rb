require 'rspec'

RSpec::Core::Runner.run(['spec/blink1_rspec_formatter_spec.rb', '--format', 'Blink1RspecFormatter'])
RSpec.reset
RSpec::Core::Runner.run(['spec/blink1_rspec_formatter_spec.rb'])