require "rspec"
require "support/sandbox"
require "kropka"

RSpec.configure do |config|
  config.before(:suite) { Sandbox.reset }
  config.after(:suite)  { Sandbox.reset }
end
