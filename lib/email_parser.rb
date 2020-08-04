require 'pry'

# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addresses
    def initialize(addresses)
        @email_addresses = addresses
    end
    def parse
        res = @email_addresses.split(/,?\s+/)
        #res = @email_addresses.include?(",") ? @email_addresses.split(/,?\s+/) : @email_addresses.split(/\s+/)
        #binding.pry
        res.uniq
    end
end