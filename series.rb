class Series
  #series has many books, books belong to series
  #series has one author, author has many series
  attr_accessor :name, :author

  @@all = [] #all series

  def self.all
    #display all serieses
    @@all
  end

  def initialize(name, author = nil)
    @name = name
    @author = author
  end

  def books
    #return all books in this series
    Book.all.select do |book|
      book.series == self
    end
  end

end
