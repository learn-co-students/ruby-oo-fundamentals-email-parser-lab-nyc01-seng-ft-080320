# class EmailAddressParser
#     attr_accessor :email_addresses
  
#     def initialize(email_addresses)
#       @email_addresses = email_addresses
#     end
    
#     def parse 
#       email_array = @email_addresses.split(" ") 
    
#       stripped = email_array.map do |email|
#         email = email.delete(",")
#         email.strip
#       end
#       stripped.uniq
#     end
#   end

  ########### OR USING REGEX ############

  class EmailAddressParser
    attr_accessor :email_addresses
  
    def initialize(email_addresses)
      @email_addresses = email_addresses
    end
    
    
    def parse 
      email_array = @email_addresses.split(/[\s,\,]/)
      email_array.delete("")
      email_array.uniq
    end
  end

#   email_addresses = "john@doe.com, person@somewhere.org"
#   parser = EmailAddressParser.new(email_addresses)
#   pp parser.email_addresses
  
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
