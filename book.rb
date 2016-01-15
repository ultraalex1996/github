class Book
  attr_reader :author,
              :name,
              :genre,
              :id

  @@books_count = 0

  def initialize(author,
                 name,
                 genre)
    @@books_count += 1
    @id     = @@books_count
    @author = author
    @name   = name
    @genre  = genre
  end
end
