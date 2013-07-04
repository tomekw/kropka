require "fileutils"

module Kropka
  class Directory
    def initialize(&block)
      instance_eval(&block) if block_given?
    end

    def create!
      FileUtils.mkdir_p(@name)
      puts ["Created directory".color(:green), @name.color(:cyan)].join(" ")
    end

    private

    def name(name)
      @name = name
    end
  end
end
