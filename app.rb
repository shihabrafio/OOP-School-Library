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

end
