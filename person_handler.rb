module PersonModule
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
    save_people_data(@people)
  end

  def create_teacher
    print 'Age:'
    age = gets.chomp.to_i
    print 'Name:'
    name = gets.chomp
    print 'Specialization:'
    specialization = gets.chomp
    person = Teacher.new(age, specialization, name)
    @people.push(person)
    puts 'Teacher created successfully'
    save_people_data(@people)
  end

  def save_people_data(people)
    @data_preserver.save_people(people)
  end
end
