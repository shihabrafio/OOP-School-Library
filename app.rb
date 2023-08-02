require 'json'
require_relative 'classes/book'
require_relative 'classes/person'
require_relative 'classes/student'
require_relative 'classes/teacher'
require_relative 'classes/rental'
require_relative 'book_handler'
require_relative 'person_handler'
require_relative 'rental_handler'
require_relative 'preserve_data'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
    @data_preserver = Save.new 
    load_data_from_files
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

  include PersonModule

  include BookModule

  include RentalModule

  def load_data_from_files
    @books = @data_preserver.read_books
    @people = @data_preserver.read_people
    @rentals = @data_preserver.read_rentals(@books, @people)
  end
end
