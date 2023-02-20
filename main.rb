require_relative './author.rb'
require_relative './magazine.rb'
require_relative './article.rb'


# welcome message
puts "Welcome to the Magazine App!"

# prompts user to cfeate a new author
puts "Please enter the name of the author you would like to create:"
author_name = gets.chomp
new_author = Author.new(author_name)

# prompts user to create a new magazine
puts "Please enter the name of the magazine you would like to create:"
magazine_name = gets.chomp

# prompts user to enter the category of the magazine
puts "Please enter the category of the magazine you would like to create:"
magazine_category = gets.chomp

new_magazine = Magazine.new(magazine_name, magazine_category)

# prompts user to create a new article
puts "Please enter the title of the article you would like to create:"
article_title = gets.chomp

new_article = Article.new(new_author, new_magazine, article_title)

# puts "author in article.rb: #{magazine_author.name}"

# prommpts user to write letter a to get all authors
puts "Please enter 'a' to get all authors:"
user_input = gets.chomp

if user_input == "a"
  Author.all.each {|author| puts "author name: #{author.name}"}
end

# prompts user to write letter m to get all magazines
puts "Please enter 'm' to get all magazines:"
user_input = gets.chomp

if user_input == "m"
  Magazine.all.each {|magazine| puts "magazine name: #{magazine.name}"}
end

# prompts user to write letter ar to get all articles

puts "Please enter 'ar' to get all articles:"
user_input = gets.chomp

if user_input == "ar"
  Article.all.each {|article| puts "article title: #{article.title}"}
end

# prompts user to write letter t to get all topics
puts "Please enter 't' to get all topics:"
user_input = gets.chomp

if user_input == "t"
  Magazine.all.each {|magazine| puts "magazine topic: #{magazine.category}"}
end

# prmpts user to write magazine name to find it by name
puts "Please enter the name of the magazine you would like to find:"
user_input = gets.chomp

Magazine.all.each do |magazine|
  if magazine.name == user_input
    puts "magazine name: #{magazine.name}"
  end
end

# prompts user to find contributing_authors by magazine name
puts "Please enter the name of the magazine you would like to find the contributing authors for:"
user_input = gets.chomp

Magazine.all.each do |magazine|
  if magazine.name == user_input
    puts "contributing authors: #{magazine.contributing_authors}"
  end
end

# prompts user to find article titles by magazine name
puts "Please enter the name of the magazine you would like to find the article titles for:"
user_input = gets.chomp

Magazine.all.each do |magazine|
  if magazine.name == user_input
    puts "article titles: #{magazine.article_titles}"
  end
end


# prompts user to enter x to exit
puts "Please enter 'x' to exit:"
user_input = gets.chomp

if user_input == "x"
  exit
end




