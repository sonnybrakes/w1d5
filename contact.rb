class Contact
  attr_accessor :first_name, :last_name, :email, :notes

  def initialize(first_name, last_name, email, notes = nil)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
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