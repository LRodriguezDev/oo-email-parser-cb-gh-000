# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails_list

  def initialize(emails_list)
    @emails_list = emails_list
  end

  def parse
    splitted_array = @emails_list.split(" ")
    splitted_array.collect do |email|
      if email.include? ","
        email.sub!(",", "")
      end
    end
  end
end
