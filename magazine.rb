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

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
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

  # Returns the magazine's articles
  def articles
    Article.all.select {|article| article.magazine == self}
  end

  # Returns the magazine's contributors
  def contributors
    self.articles.map {|article| article.author}
  end

  # Returns an array of all Magazine instances
  def self.all
    @@all
  end

  def find_by_name(name)
    self.all.select {|magazine| magazine.name == name}
  end

  def article_titles
    self.articles.map {|article| article.title}
  end

  def contributing_authors
    self.contributors.map {|contributor| contributor.name}
  end
end

# # create a magazine
# new_magazine = Magazine.new("New York Times", "News")
# daily_magazine = Magazine.new("Daily News", "News")
# weekly_magazine = Magazine.new("Weekly News", "News")
# monthly_magazine = Magazine.new("Monthly News", "News")
# puts new_magazine.name
# puts new_magazine.category
# Magazine.all.each {|magazine| puts "magazine name: #{magazine.name}, magazine category: #{magazine.category}"}