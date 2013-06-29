Kropka::Recipe.new do
  file do
    source "spec/fixtures/sandbox/source/foo.txt"
    target "spec/fixtures/sandbox/target/bar.txt"
  end
end
