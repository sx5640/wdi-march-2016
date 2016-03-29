class Contact
  attr_accessor :id, :first_name, :last_name, :email, :note

  @@contacts = []
  @@next_id = 1

  def initialize(first_name, last_name, email, note)
    @id = @@next_id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.create(options)
    # 1. Make a new Contact
    new_contact = new(options[:first_name], options[:last_name], options[:email], options[:note])

    # 2. Add it to the list of contacts (@@contacts)
    @@contacts << new_contact

    # 3. Increment the global id
    @@next_id += 1

    # 4. Return the Contact we just created
    new_contact
  end

  def self.all
    @@contacts
  end
end

# mina = Contact.new("Mina", "Mikhail", "mina@bitmaker.co", "Awesome")
