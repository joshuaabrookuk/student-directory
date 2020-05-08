Addstudents = [
    {name: "Dr. Hannibal Lecter", cohort: :november, origin: :Lithuania},
    {name: "Darth Vader" , cohort: :november, origin: :Tatooine},
    {name: "Nurse Ratched", cohort: :november, origin: :America},
    {name: "Michael Corleone", cohort: :november, origin: :America},
    {name: "Alex DeLarge", cohort: :november, origin: :England},
    {name: "The Wicked Witch of the West", cohort: :november, origin: :The_West},
    {name: "Terminator", cohort: :november, origin: :Skynet},
    {name: "Freddy Krueger", cohort: :november, origin: :Dreams},
    {name: "The Joker", cohort: :november, origin: :Unknown},
    {name: "Joffrey Baratheon", cohort: :november, origin: :Kings_Landing},
    {name: "Norman Bates", cohort: :november, origin: :America }
    ]

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end 

def print_out(students)
  current_index = 0
  
  while current_index < students.count
  print "#{current_index + 1}."
  print "#{students[current_index][:name]}".center(35)
  print "#{students[current_index][:cohort]}: cohort".center(35)
  print "origin: #{students[current_index][:origin]} \n"
  current_index += 1
  end
end

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end 

def input_students
  students = []

  puts "Type 'Add' or 'View' "
  choice = gets.chomp
  
  while choice == "Add" 
    puts "Please enter the names of the students"
    puts "To finish, hit return twice"
    
    name = gets.chomp.capitalize 

    while !name.empty? do
      if name[0] != "S" && name.length < 12
        puts "#{name}: Are you happy with this name? Y/N"
        answer = gets.chomp.upcase
        if answer == "Y" 
          break 
        elsif answer == "N"
          puts "Please enter the names of the students"
          puts "To finish, hit return twice"
          name = gets.chomp.capitalize
        end
      else
        puts "Please enter the names of the students"
        puts "To finish, hit return twice"
        name = gets.chomp.capitalize 
      end 
    end 

    if name == ""
      name = :default_name
    end 

    puts "Please enter the cohort for #{name}"
    
    cohort = gets.chomp
      
    while !cohort.empty? do 
      puts "#{cohort}: Are you happy with this cohort? Y/N"
      answer = gets.chomp.upcase
      if answer == "Y"
        break 
      elsif answer == "N"
        puts "Please enter the cohort for #{name}"
        puts "To finish, hit return twice"
        cohort = gets.chomp
      end
    end

    if cohort == ""
      cohort = :default_cohort
    end 

    puts "Please enter the origin for #{name}"
    
    origin = gets.chomp
      
    while !origin.empty? do 
      puts "#{origin}: Is this origin coreect? Y/N"
      answer = gets.chomp.upcase
      if answer == "Y"
        break
      elsif answer == "N"
        puts "Please enter the origin for #{name}"
        puts "To finish, hit return twice"
        origin = gets.chomp 
      end
    end

    if origin == ""
      origin = :default_origin
    end

    students << {name: name.to_sym, cohort: cohort.to_sym, origin: origin.to_sym} 
    puts "Now we have #{students.count} students"

    puts "'Add' or 'View' "
    choice = gets.chomp
  end
  
  while choice == "View"
    break
  end 
  
students
end   

students = input_students
print_header 
print_out(students)
print_footer(students)