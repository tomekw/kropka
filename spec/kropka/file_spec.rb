require "spec_helper"

describe "copying files" do
  let(:recipe_file_path) { Sandbox.recipe_file_path }

  before { Kropka.load_recipe(recipe_file_path) }

  it "copies file from source to target" do
    expect do
      Kropka::Recipe.instance.apply!
    end.to change {
      ::File.exists?(::File.join(Sandbox.target_files_path, "bar.txt"))
    }.to(true)
  end
end
