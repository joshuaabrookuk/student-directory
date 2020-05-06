# we put the students into an arry
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
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end 

def input_students
    puts "Please enter the names of the students"
    puts "To finish, hit return twice"
    # beloew creates and empty array, we could do this at the top 
    # but it works here for now to show the process. 
    students = []
    # below gets the first name
    # we're repeating alot of variable/ argument names here, might get confusing to read
    name = gets.chomp 
    # below, while the name is not empty, repeat this code
    while !name.empty? do
        # add the student hash to our new array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        # below we get another name from the user
        name = gets.chomp 
    end
    # below, implicitly returns the array of students
    students
end 

students = input_students
print_header 
print(students)
print_footer(students)