module RentalModule
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
    save_rentals_data(@books, @people, @rentals)
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

  def save_rentals_data(books, people, rentals)
    @data_preserver.save_rentals(books, people, rentals)
  end
end
