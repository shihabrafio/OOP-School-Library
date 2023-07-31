require_relative 'app'
require_relative 'logic'

def main()
  app = App.new
  logic = Logic.new(app)
  puts ''
  puts 'Welcome to School Library App!'
  puts '------------------------------'
  option = 0
  while option != '7'
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
    logic.run(option)
  end
end
main
