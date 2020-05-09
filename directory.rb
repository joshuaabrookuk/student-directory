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

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def students_by_cohort(students)
  
  students_by_cohort = {}
  
  students.each do |student|
    cohort = student[:cohort]

  if students_by_cohort[cohort] == nil
  students_by_cohort[cohort] = []
  end
  students_by_cohort[cohort].push(student[:name])
  end
  p students_by_cohort
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
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
# print(students)
students_by_cohort(students)
print_footer(students)