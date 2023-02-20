# Article
# Article#initialize(author, magazine, title)
# An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
# An article cannot change its author, magazine, or title after it has been initialized.
# Article#title
# Returns the title for that given article
# Article. all
# Returns an array of all Article instances

class Article
  # Article#initialize(author, magazine, title)
  # An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
  # An article cannot change its author, magazine, or title after it has been initialized.
  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
  end

  # Article#title
  # Returns the title for that given article
  def title
    @title
  end

  # Article. all
  # Returns an array of all Article instances
  def self.all
    @@all
  end
  
end