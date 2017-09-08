class Book

  attr_accessor :author, :title, :word_count, :series

  @@all = [] #all books stored here

  def initialize(title, word_count, author = nil, series = nil)
    @title = title
    @word_count = word_count
    @author = author
    @series = series
    @@all << self
  end

  def self.all
    #return all books
    @@all
  end

end
