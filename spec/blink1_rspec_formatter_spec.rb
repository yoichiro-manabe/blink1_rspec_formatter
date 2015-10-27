require 'spec_helper'

describe Blink1RspecFormatter do
  it 'test' do
    expect(Blink1RspecFormatterVersion::VERSION).not_to be(nil)
  end

  it 'test_error' do
    expect(Blink1RspecFormatterVersion::VERSION).to be(nil)
  end
end