require_relative 'app'

def main()
  app = App.new
  books = []
  people = []
  rentals = []

  puts '
Welcome to School Library App!
------------------------------
'
  option = 0
  while option != '7'
    list_options = '
Please choose an option by enterin a number (1-7):
1 - List all books
2 - List all people
3 - Create a person
4 - Create a book
5 - Create a rental
6 - List all rentals for a given person id
7 - Exit

'
    puts list_options
    option = gets.chomp
    case option
    when '1'
      if books.empty?
        puts 'There are no books!'
        next
      end
      app.list_books(books)
    when '2'
      if people.empty?
        puts 'There are no people:'
        next
      end
      app.list_people(people)
    when '3'
      people.push(app.create_person)
    when '4'
      books.push(app.create_book)
    when '5'
      rentals.push(app.create_rental(books, people))
    when '6'
      app.list_rentals
    when '7'
      puts 'Goodbye!'
    else
      puts 'Invalid option. Try again!'
    end
  end
end
main