require "fileutils"

module Kropka
  class File
    def initialize(&block)
      instance_eval(&block) if block_given?
    end

    def copy!
      FileUtils.cp(@source, @target)
      puts ["Copied".color(:green), @source.color(:cyan), "to".color(:green),
            @target.color(:cyan)].join(" ")
    end

    private

    def source(source)
      @source = source
    end

    def target(target)
      @target = target
    end
  end
end
