require 'spec_helper'

describe RouteResolution do
  it 'has a version number' do
    expect(RouteResolution::VERSION).not_to be_nil
  end

  it 'has a auto generated file' do
    expect(RouteResolution::AUTO_GENERATED_FILE).not_to be_nil
  end

  it 'has a auto generated text' do
    expect(RouteResolution::HEADING).not_to be_nil
  end

  describe '.routes_from_rails' do
    it 'generate file' do
      RouteResolution.routes_from_rails
      expect(File.exist?(RouteResolution::AUTO_GENERATED_FILE)).to be_truthy
      File.delete RouteResolution::AUTO_GENERATED_FILE
    end
  end
end
