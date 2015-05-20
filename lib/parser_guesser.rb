require_relative 'lookups'

module Parsicorn
  class ParserGuesser


    def initialize(args={})
      @opts={}
      if args.is_a?(Hash)
        @opts.merge(args)
      elsif args.is_a?(String) && File.exist?(args)
        @opts[:path] = args
      end

    end

    def guesses
      puts MIMES_TO_PARSERS.inspect
    end

    private

    def make_guesses
      
    end




  end
end