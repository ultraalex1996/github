class Library
  attr_accessor :name,
                :books,
                :user_cards

  def initialize(name)
    @name = name
    @books = []
    @user_cards = []
  end

  def add_books(books)
    books.each do |book|
      @books << book
    end
  end

  def add_book(book)
    @books << book
  end

  def get_book(user_card_id, book_id)
    book = @books.find do |book|
      book.id == book_id
    end
    user_card = @user_cards.find do |card|
      card.id == user_card_id
    end
    record = CardRecord.new(book, user_card, Time.now)
    user_card.write_record(record)
  end
end
