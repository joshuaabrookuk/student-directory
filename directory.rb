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

# personally I like tp seperate my methods but I'm not sure if it's the Rubyist way

# this is all much cleaner and eairer to read.

# also nothing will happen until with call out methods

print_header #does it's thing
print(students) # this method takes the students array as a parameter
print_footer(students) # this method also takes the array students but counts them instead