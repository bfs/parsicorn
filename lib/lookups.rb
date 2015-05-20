module Parsicorn
  class LookupUtils
    class << self
  
      def to_lookup_map(arr)
        {}.tap do |m|
          arr.each_slice(2).to_a.each do |r|
            k,v = r[0],Array(r[1..-1]).flatten
            m[k] = Array(m[k]) + v
          end
        end
      end

    end
  end

  CONTENT_TYPE_TO_PARSERS = LookupUtils.to_lookup_map []

  MIMES_TO_PARSERS = LookupUtils.to_lookup_map  [
    'text/csv', CSVParser,
    'text/tab-separated-values', [TSVParser, TabParser],
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', ExcelParser,
    'application/vnd.ms-excel', ExcelParser
  ]

  EXTENSIONS_TO_PARSERS = LookupUtils.to_lookup_map [
    'tab', TabParser
  ]
end