module BookModule
  def create_book
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created successfully'
    save_books_data(@books)
  end

  def save_books_data(books)
    @data_preserver.save_books(books)
  end
end
