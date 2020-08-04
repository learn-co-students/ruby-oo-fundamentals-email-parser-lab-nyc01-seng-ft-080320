# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
    def initialize(string)
        @list = string
    end

    def parse
        @clean_list = @list.tr(",", "").split(" ").uniq
    end
end
