# Esperanto

[esperanto](http://esperantojs.org) for Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'esperanto'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install esperanto

## Usage

``` ruby
result = Esperanto.transform <<JS
  export default function() {
    return 'hi, from esperanto.';
  }
JS

result['code']
//=> "define(function () {\n\n  'use strict';\n\n  return function() {\n      return 'hi, from esperanto.';\n    };\n\n});"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
