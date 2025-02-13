# Global Scope
print("Starting program")
grade = 64
grade = grade + 5
print("Grade:", grade)
print("Ending program")
print()
#
# Local Scope
def calculate_grade(grade:int, weight:float)->float:
    curved = 100 * grade ** .5
    final = curved * weight
    return final

my_grade = 90
the_weight = .1
calculate_grade(my_grade, the_weight)
print(calculate_grade)
print()
#
# Returning Values
def get_grade(points:int, possible:int)->float:
    grade = points / possible
    return grade

my_grade = get_grade(70, 100)
# This will work fine, `my_grade` is in scope!
print(my_grade)
# This will cause an error, out of scope!
print(grade)
print()
#
# Global Variables Are Bad inside Functions
# Global variables can be modified from elsewhere in the code. 
# One of the best parts of functions is that you can think about them in isolation from the 
# rest of the program. Global variables break that isolation and force you to have to think 
# about a much bigger and more complicated picture.
from bakery import assert_equal

my_title = "Mr. "
def add_title(name: str) -> str:
    titled_name = my_title + name
    return titled_name

assert_equal(add_title("Bart"), "Mr. Bart")
# Dangerous! Do not change global variables - make them constant!
my_title = "Dr. "
assert_equal(add_title("Bart"), "Dr. Bart")
print()
#
# Global Constants Are Good
"""The only exception is if you are 100% certain that the global variable's value will 
stay constant and never change. We call these global constants, and unlike global variables,
they are a great idea that can dramatically improve the readability of code. 
See the example below, where we know that the value of HOURS_IN_DAY will never change. 
To make it clear for other programmers that HOURS_IN_DAY is a constant, we write its name 
in all capital letters. Now, instead of having the magic number 24 mysteriously in our 
function definition, other developers reading our code will see that the number represents 
the number of hours in a day. That same value could be reused in 
other parts of the program too."""
from bakery import assert_equal

HOURS_IN_DAY = 24

def days_to_hours(days: int) -> int:
    return HOURS_IN_DAY * days

assert_equal(days_to_hours(4), 96)
assert_equal(days_to_hours(0), 0)

