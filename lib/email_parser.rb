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
    # The regex /,?\s/ means: match 0 or more commas followed by a whitespace character. So of there is 0 commas it will split
    #on a space but if there is a comma it will also split on the combo of comma and space. This would fail in an example that has
    #0 spaces such as "avi@test.com,arel@test.com".
    def parse
        parsed_array = @email.split(/,?\s/);
        parsed_array = parsed_array.uniq;
    end
end

#binding.pry;


# https://rubular.com/ was very helpful too
# EmailAddressParser.new("avi@test.com, avi@test.com").parse
# ruby lib/email_parser.rb

