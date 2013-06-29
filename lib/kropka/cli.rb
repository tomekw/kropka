require "thor"

module Kropka
  class CLI < Thor
    desc "apply [RECIPE]", "Apply recipe RECIPE"
    def apply(recipe_file)
      Kropka.load_recipe(recipe_file)

      Recipe.instance.apply!
    end

    map "-v" => :version
    desc "version", "Display installed Kropka version"
    def version
      puts "Kropka #{ Kropka::VERSION }"
    end
  end
end
