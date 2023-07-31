require_relative 'app'

class Logic
  def initialize(app)
    @books = []
    @people = []
    @rentals = []
    @app = app
  end

  def run(option)
    case option
    when '1'
      if @books.empty?
        puts 'There are no books'
        puts ''
        return
      end
      @app.list_books(@books)
    when '2'
      if @people.empty?
        puts 'There are no people'
        puts ''
        return
      end
      @app.list_people(@people)
    when '3'
      @people.push(@app.create_person)
    when '4'
      @books.push(@app.create_book)
    when '5'
      @rentals.push(@app.create_rental(@books, @people))
    when '6'
      @app.list_rentals
    when '7'
      puts 'Goodbye!'
    else
      puts 'Invalid option. Try again!'
    end
  end
end
