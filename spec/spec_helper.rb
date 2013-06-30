require "rspec"
require "support/sandbox"
require "kropka"

RSpec.configure do |config|
  config.before { Sandbox.reset }
end
