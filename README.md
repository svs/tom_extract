# TomExtract
[![Build Status](https://travis-ci.org/svs/tom_extract.png)](https://travis-ci.org/svs/tom_extract) [![Code Climate](https://codeclimate.com/github/svs/tom_extract.png)](https://codeclimate.com/github/svs/tom_extract)
TomExtract extracts TomDoc from Ruby source files. It provides the answer as a nice Hash. i.e.

given a source file like this

```ruby
module Foo
  class Bar

    # Public: Duplicate some text an arbitrary number of times.
    #
    # text  - The String to be duplicated.
    # count - The Integer number of times to duplicate the text.
    #
    # Examples
    #
    #   multiplex('Tom', 4)
    #   # => 'TomTomTomTom'
    #
    # Returns the duplicated String.
    def multiplex(text, count)
      text * count
    end
  end
end
```
it provides the following data

```ruby
    { "Foo" => {
        "Bar" => {
          "multiplex" => "    # Public: Duplicate some text an arbitrary number of times.
    #
    # text  - The String to be duplicated.
    # count - The Integer number of times to duplicate the text.
    #
    # Examples
    #
    #   multiplex('Tom', 4)
    #   # => 'TomTomTomTom'
    #
    # Returns the duplicated String."
        }
      }
    }
  }
```


## Installation

Add this line to your application's Gemfile:

    gem 'tom_extract'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tom_extract

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
