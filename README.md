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
  source "path/to/source/file"
  target "path/to/target/file"
end
```

and apply it:

``` bash
$ kropka apply recipe.rb
Copied path/to/source/file to path/to/target/file
```

## Example

* [tomekw/dotfiles](https://github.com/tomekw/dotfiles)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
