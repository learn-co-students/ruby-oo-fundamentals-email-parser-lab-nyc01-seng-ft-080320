# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

email_addresses = "john@doe.com, person@somewhere.org"

class EmailAddressParser
    def initialize(string)
        @string = string
    end

    attr_accessor :list

    def parse
        @list = @string.split(%r{,\s*|\s})
        @list.uniq
    end
end

