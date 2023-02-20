# Author
# Author#initialize(name)
# An author is initialized with a name, as a string.
# A name cannot be changed after it is initialized.
# Author#name
# Returns the name of the author

class Author
  # An author is initialized with a name, as a string.
  # A name cannot be changed after it is initialized.
  def initialize(name)
    @name = name
  end

  # Returns the name of the author
  def name
    @name
  end
end

# create an author
new_author = Author.new("John Doe")
puts new_author.name