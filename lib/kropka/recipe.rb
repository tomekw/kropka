module Kropka
  class Recipe
    def self.instance
      @@instance
    end

    def initialize(&block)
     self.directories = []
     self.files       = []

     instance_eval(&block) if block_given?

     @@instance = self
    end

    def apply!
      directories.map(&:create!)
      files.map(&:copy!)
    end

    attr_reader :directories, :files

    private

    def directory(&block)
      self.directories << Directory.new(&block) if block_given?
    end

    def file(&block)
      self.files << File.new(&block) if block_given?
    end

    attr_writer :directories, :files
  end
end
