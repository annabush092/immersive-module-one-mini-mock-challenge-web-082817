class Author
  attr_accessor :name

  @@all = [] #all authors

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    #return a list of all the authors
    @@all
  end

  def books
    #return all the books this author instance has written
    Book.all.select do |book|
      book.author == self
    end
  end

  def write_book(title, word_count)
    #make a new Book instance associated with this author
    Book.new(title, word_count, self)
  end

  def total_words
    #total number of words written by this author in all his/her books
    total = 0
    self.books.each do |book|
      total += book.word_count
    end
    total
  end

  def self.most_words
    #return author instance who has written the most words
    self.all.sort_by do |author|
      author.total_words
    end.last
  end


##added series class methods
  def all_series
    #return all serieses this author has written
    Series.all.select do |series|
      series.author == self
    end
  end

  def write_series(titles_words_hash, series_name)
    #write a new series given a hash:
    #   {book_1: [title, num_words], book2: [title, num_words]...}
    new_s = Series.new(series_name, self)
    titles_words_hash.each do |book, info|
      self.write_book(info[0], info[1], self, new_s) #title, word_count, author, series
    end
  end

end
