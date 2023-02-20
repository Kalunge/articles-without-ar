require_relative './author.rb'

magazine_author = Author.new("Jane Doe")

puts "author in article.rb: #{magazine_author.name}"


class Article
  # Article#initialize(author, magazine, title)
  # An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
  # An article cannot change its author, magazine, or title after it has been initialized.

  @@all = []
  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title

    @@all << self
  end

  # Article#title
  # Returns the title for that given article
  def title
    @title
  end

  # Article#author
  # Returns the author for that given article
  def author
    @author
  end

  # Article#magazine
  # Returns the magazine for that given article
  def magazine
    @magazine
  end

  # Article. all
  # Returns an array of all Article instances
  def self.all
    @@all
  end

end

# create an article
# new_article = Article.new("John Doe", "New York Times", "News")
# daily_article = Article.new("Jane Doe", "Daily News", "News")
# article_two = Article.new("Joe Doe", "Weekly News", "News")
# article_three = Article.new("Jill Doe", "Monthly News", "News")
# Article.all.each {|article| puts "article title: #{article.title}, Author: #{article.author}, Magazine: #{article.magazine}"}