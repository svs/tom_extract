require 'tom_extract'


describe TomExtract do

  subject { TomExtract.new('./spec/fixtures/source.rb') }

  its(:result) { should ==
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

end
