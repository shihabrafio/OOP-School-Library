require_relative 'app'

def main()
    app = App.new()
    books = []
    people = []
    rentals = []
    puts ''
    puts 'Welcome to School Library App!'
    puts '------------------------------'
    option = 0
    while option!= '7'
        puts 'Please choose an option by enterin a number:'
        puts ''
        puts '1. List all books'
        puts '2. List all people'
        puts '3. Create a person'
        puts '4. Create a book'
        puts '5. Create a rental'
        puts '6. List all rentals for a given person id'
        puts '7. Exit'
        puts ''
        option = gets.chomp
        case option
        when '1'
            if books.empty?
                puts 'There are no books'
                puts ''
                next
            end
            app.list_books(books)
        when '2'
            if people.empty?
                puts 'There are no people'
                puts ''
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