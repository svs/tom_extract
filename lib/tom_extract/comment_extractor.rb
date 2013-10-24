class CommentExtractor

  def initialize(pathname, line_number)
    @pathname, @line_number = pathname, line_number
  end

  def comment
    c = []
    source[0..(line_number-2)].reverse.each do |l|
      break if l.gsub(/\s/,'').empty?
      c << l if l.match(/\A\s*\#/)
    end
    c.reverse.join("\n")
  end

  private

  attr_reader :pathname, :line_number

  def source
    File.read(pathname).split("\n")
  end

end
