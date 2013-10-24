require 'tom_extract'

describe CommentExtractor do

  subject { CommentExtractor.new('./spec/fixtures/source.rb', 15) }


  its(:comment) { should == "    # Public: Duplicate some text an arbitrary number of times.
    #
    # text  - The String to be duplicated.
    # count - The Integer number of times to duplicate the text.
    #
    # Examples
    #
    #   multiplex('Tom', 4)
    #   # => 'TomTomTomTom'
    #
    # Returns the duplicated String." }

end
