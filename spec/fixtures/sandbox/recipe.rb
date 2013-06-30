Kropka::Recipe.new do
  directory do
    name "spec/fixtures/sandbox/target/directory/tree/structure"
  end

  file do
    source "spec/fixtures/sandbox/source/foo.txt"
    target "spec/fixtures/sandbox/target/bar.txt"
  end
end
