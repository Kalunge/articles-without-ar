# Author
# Author#initialize(name)
# An author is initialized with a name, as a string.
# A name cannot be changed after it is initialized.
# Author#name
# Returns the name of the author

class Author
  # An author is initialized with a name, as a string.
  # A name cannot be changed after it is initialized.
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns the name of the author
  def name
    @name
  end

  # Returns the author's articles
  def articles
    Article.all.select {|article| article.author == self}
  end

  # Returns the author's magazines
  def magazines
    self.articles.map {|article| article.magazine}
  end


  # returns the aurhor's article
  def articles
    Article.all.select {|article| article.author == self}
  end

  # returns the author's magazines
  def magazines
    self.articles.map {|article| article.magazine}
  end

  # Returns an array of all Author instances
  def self.all
    @@all
  end

  def topic_areas
    self.articles.map {|article| article.magazine.category}
  end
end

# # create an author
# new_author = Author.new("John Doe")
# magazine_author = Author.new("Jane Doe")
# author_two = Author.new("Joe Doe")
# author_three = Author.new("Jill Doe")
# puts new_author.name

# Author.all.each {|author| puts "author name: #{author.name}"}