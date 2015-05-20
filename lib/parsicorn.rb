
%w[version csv_parser tsv_parser tab_parser excel_parser parser_guesser].each do |f|
  require_relative f
end

module Parsicorn
  class Parser
    
    attr_accessor :blah
    DEFAULT_OPTIONS = {}

    def initialize(opts={})
      @ops = DEFAULT_OPTIONS.merge(opts) 
    end

    def parse(paths,&block)
      guesser = ParserGuesser.new
      guesser.guesses
    end
    
    private

  end
end
