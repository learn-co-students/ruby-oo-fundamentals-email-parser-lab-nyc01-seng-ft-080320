# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"



class EmailAddressParser

    def initialize(email_list)
        @emails = email_list
    end
    
    def parse
        if @emails.is_a?(String) == true
            #use Regex
            # [] to match any character, + to treat multiple spaces between emails as single operator
            email_array = @emails.split(/[,\s]+/)
            email_array = email_array.uniq
        end
        if @emails.is_a?(Array) == true
            return @emails.uniq
        end 
        email_array
    end

    attr_accessor :emails
    
end

