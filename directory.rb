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
# and then print them
puts "The students of Villains Academy"
puts "-------------"
students.each {|student| puts student}
# then we print the total
print "Overall, we have #{students.count} great students \n"
# we update our interp variable to the arry students and use the count method on the arry.
