require 'pry'
require_relative './book'
require_relative './author'

require_relative './series'

# test code below to create instances and display functionality
#
# auth1 = Author.new("JK Rowling")
# auth1.write_book("Harry Potter", 500)
# auth1.write_book("Harry Potter 2", 400)
# auth2 = Author.new("CS Lewis")
# auth2.write_book("Lion Witch Wardrobe", 30)
# auth2.write_book("Magicians boy", 50)
#
# puts "JK Rowling wrote: #{auth1.books}."
# puts "CS Lewis wrote: #{auth2.books}."
# puts "All books: #{Book.all}."
# puts "All authors: #{Author.all}"
# puts "JK Rowling wrote: #{auth1.total_words} words."
# puts "CS Lewis wrote: #{auth2.total_words} words."
# puts "Who wrote more words? #{Author.most_words}"

binding.pry

"bye"
