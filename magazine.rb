# Magazine#initialize(name, category)
# A magazine is initialized with a name as a string and a category as a string
# The name and category of the magazine can be changed after being initialized.
# Magazine#name
# Returns the name of this magazine
# Magazine#category
# Returns the category of this magazine
# Magazine. all
# Returns an array of all Magazine instances

class Magazine
  # A magazine is initialized with a name as a string and a category as a string
  # The name and category of the magazine can be changed after being initialized.
  def initialize(name, category)
    @name = name
    @category = category
  end

  # Returns the name of this magazine
  def name
    @name
  end

  # Returns the category of this magazine
  def category
    @category
  end

  # Returns an array of all Magazine instances
  def self.all
    @@all
  end

  # Returns an array of all Magazine instances
  def self.all
    @@all
  end
end
