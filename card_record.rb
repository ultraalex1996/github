class CardRecord
  attr_accessor :user_card,
                :book,
                :time

  def initialize(user_card,
                 book,
                 time)
    @user_card_id = user_card.id
    @book_id      = book.id
    @time         = time
  end

end
