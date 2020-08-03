# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry';

class EmailAddressParser
    attr_accessor :email;

    def initialize (email)
        @email = email;
    end

    def parse
        parsed_array = @email.split(/,?\s/);
        parsed_array = parsed_array.uniq;
    end
end

#binding.pry;



# EmailAddressParser.new("avi@test.com, avi@test.com").parse
# ruby lib/email_parser.rb

