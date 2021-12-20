# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


require 'pry'

class EmailAddressParser
    def initialize(email_list)
        @email_list = email_list
    end

    def parse
        update= @email_list.gsub(/[,]/,"")
        email_array = update.split(" ")

        delete_duplicates = email_array.uniq
    #    binding.pry

    delete_duplicates


       
        
    end
    
end

email_addresses = "john@doe.com, person@somewhere.org, roger@gmail.com, angel@gmail.com lucas@gmail.com person@somewhere.org, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

parser.parse
