# Kropka

Manage your dotfiles

## The name

`kropka` means `dot` in Polish language

## Rationale

Inspired by Puppet and because I can...

## Installation

``` bash
$ gem install kropka
```

## Usage

Write your recipe:

``` ruby
# recipe.rb

Kropka::Recipe.new do
  directory do
    name "directory/tree/structure"
  end

  file do
    source "path/to/source/file1"
    target "path/to/target/file1"
  end

  file do
    source "path/to/source/file2"
    target "path/to/target/file2"
  end
end
```

and apply it:

``` bash
$ kropka apply recipe.rb
Created directory directory/tree/structure
Copied path/to/source/file1 to path/to/target/file1
Copied path/to/source/file2 to path/to/target/file2
```

## Example

* [tomekw/dotfiles](https://github.com/tomekw/dotfiles)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
