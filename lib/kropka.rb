require "rainbow"

require_relative "kropka/cli"
require_relative "kropka/directory"
require_relative "kropka/file"
require_relative "kropka/recipe"
require_relative "kropka/version"

module Kropka
  def self.load_recipe(file)
    module_eval(read(file))
  end

  private

  def self.read(file)
    ::File.read(file)
  end
end
