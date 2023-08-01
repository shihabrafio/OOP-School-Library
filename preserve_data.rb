module PreserveData
  def write_data
    books = {}
    people = {}
    rentals = {}
    @books.each { |book| books[book.class] = { 'title' => book.title, 'author' => book.author } }
    @people.each do |person|
      people[person.class] = if person.instance_of?(Teacher)
                               { 'age' => person.age, 'name' => person.name, 'specialization' => person.specialization,
                                 'id' => person.id }
                             else
                               { 'age' => person.age, 'name' => person.name,
                                 'parent_permission' => person.parent_permission, 'id' => person.id }

                             end
    end
    File.write('./datas/books.json', Json.generate(books), mode: 'w')
    File.write('./datas/people.json', Json.generate(people), mode: 'w')
    File.write('./datas/rentals.json', Json.generate(rentals), mode: 'w')
  end
end
