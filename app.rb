relative_require 'book'
relative_require 'person'
relative_require 'student'
relative_require 'teacher'
relative_require 'rental'

class App
  def initialize()
    @books = []
    @people = []
    @rentals = []
  end
    
  def list_books()
    @books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_people()
    @people.each do |person|
      puts "Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def create_person()
    puts 'Do you want to create a student (1) or a teacher (2)?'
    person_type = gets.chomp.to_i
    if person_type == 1
      create_student()
    elsif person_type == 2
      create_teacher()
    else
      puts 'Invalid option'
    end
  end

  def create_student()
    puts 'Age?'
    age = gets.chomp.to_i
    puts 'Name?'
    name = gets.chomp
    puts 'Has parent permission? (Y/N)'
    parent_permission = gets.chomp.downcase == 'y'
    person = Student.new(age, name, parent_permission)
    @people.push(person)
  end

  def create_teacher()
    puts 'Age?'
    age = gets.chomp.to_i
    puts 'Name?'
    name = gets.chomp
    puts 'Specialization?'
    specialization = gets.chomp
    person = Teacher.new(age, name, specialization)
    @people.push(person)
  end

  def create_book()
    puts 'Title?'
    title = gets.chomp
    puts 'Author?'
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
  end

  def create_rental()
    puts 'Select a book from the following list by number'
    list_books()
    book_index = gets.chomp.to_i - 1
    puts 'Select a person from the following list by number (not id)'
    list_people()
    person_index = gets.chomp.to_i - 1
    puts 'Date?'
    date = gets.chomp
    rental = Rental.new(date, @books[book_index], @people[person_index])
    @rentals.push(rental)
  end

  def list_rentals()
    @rentals.each do |rental|
      if rental.person.id == person.id
        puts "Date: #{rental.date}, Book: #{rental.book.title}, Person: #{rental.person.name}"
      end
    end
  end
end
