require "fileutils"

module Sandbox
  def self.recipe_file_path
    ::File.join(sandbox_path, "recipe.rb")
  end

  def self.source_files_path
    ::File.join(sandbox_path, "source")
  end

  def self.target_files_path
    ::File.join(sandbox_path, "target")
  end

  def self.reset
    FileUtils.rm_rf(::File.join(target_files_path, "directory"))
    FileUtils.rm_rf(::File.join(target_files_path, "bar.txt"))
  end

  private

  def self.sandbox_path
    ::File.join(%w(spec fixtures sandbox))
  end
end
