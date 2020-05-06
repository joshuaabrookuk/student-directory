# we put the students into an arry
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]
def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end 

def print(names)
    names.each {|name| puts name}
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