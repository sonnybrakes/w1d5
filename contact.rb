class Contact
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :notes

  @@contacts = []
  @@id = 1

  def initialize(first_name, last_name, options = {})
    @first_name = first_name
    @last_name = last_name
    @email = options[:email]
    @notes = options[:notes]
  end

  def self.create(first_name, last_name, options = {})
    new_contact = Contact.new(first_name, last_name, options)
    new_contact.id = @@id
    @@id += 1
    @@contacts << new_contact
  end
  # attr_accessor creates these methods

  # def first_name
  #   @first_name
  # end

  # def first_name=(new_first_name)
  #   @first_name = new_first_name
  # end
end