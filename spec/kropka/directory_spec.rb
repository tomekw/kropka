require "spec_helper"

describe "creating directories" do
  let(:recipe_file_path) { Sandbox.recipe_file_path }

  before { Kropka.load_recipe(recipe_file_path) }

  it "creates directory structure" do
    expect do
      Kropka::Recipe.instance.apply!
    end.to change {
      ::File.exists?(
        ::File.join(Sandbox.target_files_path, "directory", "tree", "structure")
      )
    }.to(true)
  end
end
