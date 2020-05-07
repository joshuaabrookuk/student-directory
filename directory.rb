students = [
    {name: "Dr. Hannibal Lecter", cohort: :november},
    {name: "Darth Vader" , cohort: :november},
    {name: "Nurse Ratched", cohort: :november},
    {name: "Michael Corleone", cohort: :november},
    {name: "Alex DeLarge", cohort: :november},
    {name: "The Wicked Witch of the West", cohort: :november},
    {name: "Terminator", cohort: :november},
    {name: "Freddy Krueger", cohort: :november},
    {name: "The Joker", cohort: :november},
    {name: "Joffrey Baratheon", cohort: :november},
    {name: "Norman Bates", cohort: :november}
    ]
    
def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end 

def print(students)
  current_index = 0
  
  while current_index < students.count
  puts "#{current_index + 1}. #{students[current_index][:name]} #{students[current_index][:cohort]} cohort"
  current_index += 1
  end
end

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end 

def input_students
    puts "Please enter the names of the students"
    puts "To finish, hit return twice"
    students = []
    name = gets.chomp.capitalize 
    while !name.empty? do
        if name[0] != "S" && name.length < 12
            students << {name: name, cohort: :november}
            puts "Now we have #{students.count} students"
            name = gets.chomp.capitalize  
        else
            puts "Please enter the names of the students"
            puts "To finish, hit return twice"
            name = gets.chomp.capitalize 
        end 
    end 
    students
end

students = input_students
print_header 
print(students)
print_footer(students)