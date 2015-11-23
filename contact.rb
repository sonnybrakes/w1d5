class Contact
  attr_accessor :first_name, :last_name, :email, :notes

  def initialize(options = {})
    @first_name = options[:first_name]
    @last_name = options[:last_name]
    @email = options[:email]
    @notes = options[:notes]
  # why initialize? when does initialize get run?
  # initialize gets run on dot new
  # eg.> michel = Contact.new
  end

  # attr_accessor creates these methods

  # def first_name
  #   @first_name
  # end

  # def first_name=(new_first_name)
  #   @first_name = new_first_name
  # end
end