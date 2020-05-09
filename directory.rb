students = [
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

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    if students.length == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end 
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  if students.length == 1
    puts puts "Overall, we have #{students.count} great student"
  else
    puts "Overall, we have #{students.count} great students"
  end 
end

students = input_students
print_header
print(students)
print_footer(students)