[![Circle CI](https://circleci.com/gh/Originate/attr_defaultable.svg?style=svg)](https://circleci.com/gh/Originate/attr_defaultable)
[![Coverage Status](https://coveralls.io/repos/Originate/attr_defaultable/badge.svg?branch=master&service=github)](https://coveralls.io/github/Originate/attr_defaultable?branch=master)

# AttrDefaultable

Easily add attributes with default values to your classes.

## Installation

Add this line to your application's Gemfile:

    gem 'attr_defaultable'

To optionally slip attr_defaultable into Module so it is available without extending:

    gem 'attr_defaultable', require: 'extend_attr_defaultable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install attr_defaultable

## Usage

```ruby
class Example
  extend AttrDefaultable
  attr_defaultable :foo, -> { 'bar' }
end
```

This will create a getter/setter pair for your variable `foo`. If the setter is not used before the getter
the proc given will be called and it's result used to set the value of `foo`.

Very useful for creating dependency definitions with protected default values that are evaluated just in time.

## Alternate Usage

By using the alternate gem declaration in your Gemfile or manually
requiring `extend_attr_defaultable` early in your application, you can avoid the explicit `extend`
in your class.

```ruby
class Example
  attr_defaultable :foo, -> { 'bar' }
end
```


## Contributing

1. Fork it ( http://github.com/Originate/attr_defaultable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
