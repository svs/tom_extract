require "bundler/setup"
require "sexp_info"
require "tom_extract/version"
require "tom_extract/comment_extractor"
require 'ripper'
require 'pry_debug'

class TomExtract

  def initialize(pathname)
    @pathname = Pathname.new(pathname)
  end

  def result
    extract_methods
  end

  private

  attr_reader :pathname

  def source
    File.read(pathname)
  end

  def extract_methods(h = sexp_info.to_h)
    Hash[
         h.map do |name, item|
           puts name, item.class
           [name, item.is_a?(SexpThing::Def) ? method_with_comments(item) : (item.is_a?(Hash) ? extract_methods(item) : nil)]
         end
        ]
  end

  def method_with_comments(m)

  end

  def sexp
    Ripper.sexp(source)
  end

  def sexp_info
    @sexp_info ||= SexpInfo.new(sexp)
  end

end
