students = [
    {name: "Dr. Hannibal Lecter", cohort: :november},
    {name: "Darth Vader" , cohout: :november},
    {name: "Nurse Ratched", cohout: :november},
    {name: "Michael Corleone", cohout: :november},
    {name: "Alex DeLarge", cohout: :november},
    {name: "The Wicked Witch of the West", cohout: :november},
    {name: "Terminator", cohout: :november},
    {name: "Freddy Krueger", cohout: :november},
    {name: "The Joker", cohout: :november},
    {name: "Joffrey Baratheon", cohout: :november},
    {name: "Norman Bates", cohout: :november}
    ]
    
def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end 

def print(students)
  students.each_with_index() { |student, index| puts  " #{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" }
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
        if name[0] != "S"
            students << {name: name, cohort: :november}
            puts "Now we have #{students.count} students"
            name = gets.chomp 
        else
            puts "Please enter the names of the students"
            puts "To finish, hit return twice"
            name = gets.chomp
        end 
    end 
    students
end

students = input_students
print_header 
print(students)
print_footer(students)