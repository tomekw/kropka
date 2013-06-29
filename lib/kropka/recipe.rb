module Kropka
  class Recipe
    def self.instance
      @@instance
    end

    def initialize(&block)
     self.files = []

     instance_eval(&block) if block_given?

     @@instance = self
    end

    def apply!
      files.map(&:copy!)
    end

    attr_reader :files

    private

    def file(&block)
      self.files << File.new(&block) if block_given?
    end

    attr_writer :files
  end
end
