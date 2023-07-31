require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books(_books)
    @books.each_with_index do |book, index|
      puts "#{index + 1}) Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_people(_people)
    @people.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2) :'
    person_type = gets.chomp.to_i
    if person_type == 1
      create_student
    elsif person_type == 2
      create_teacher
    else
      puts 'Invalid option'
    end
  end

  def create_student
    print 'Age:'
    age = gets.chomp.to_i
    print 'Name:'
    name = gets.chomp
    print 'Has parent permission? [Y/N]'
    parent_permission_input = gets.chomp.downcase
    parent_permission = parent_permission_input == 'y'
    person = Student.new(age, name, parent_permission)
    @people.push(person)
    puts 'Student created successfully'
  end

  def create_teacher
    print 'Age:'
    age = gets.chomp.to_i
    print 'Name:'
    name = gets.chomp
    print 'Specialization:'
    gets.chomp
    person = Teacher.new(age, 'Unknown', name)
    @people.push(person)
    puts 'Teacher created successfully'
  end

  def create_book
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created successfully'
  end

  def create_rental(_books, _people)
    puts 'Select a book from the following list by number:'
    @books.each_with_index do |book, index|
      puts "#{index + 1}. Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_index = gets.chomp.to_i
    book_index -= 1
    puts 'Select a person from the following list by number (not id):'
    @people.each_with_index do |person, index|
      puts "#{index + 1}. Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_index = gets.chomp.to_i
    person_index -= 1
    print 'Date:'
    date = gets.chomp
    rental = Rental.new(date, @books[book_index], @people[person_index])
    @rentals.push(rental)
    puts 'Rental created successfully'
  end

  def list_rentals
    puts 'ID of person: '
    person_id = gets.chomp.to_i
    puts 'Rentals:'
    @rentals.each_with_index do |rental, index|
      if rental.person.id == person_id
        o = "#{rental.date}, Book: #{rental.book.title}, Author: #{rental.book.author}, Person: #{rental.person.name}"
        puts "#{index + 1}) Date: #{o}"
      end
    end
  end
end
