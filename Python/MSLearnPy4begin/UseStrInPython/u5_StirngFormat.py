##  Percent sign (%) formatting
# Percent Sign (%) Formatting
# %s: This is a placeholder for a string. It tells Python to format the value as a string.
# %d: This is a placeholder for an integer.
# %f: This is a placeholder for a floating-point number.
mass_percentage = "1/6"
print("On the Moon, you would weigh about %s of your weight on Earth." % mass_percentage)

print("""
    Both sides of the %s get the same amount of sunlight,
    but only one side is seen from %s because the %s rotates 
    around its own axis when it orbits %s. 
    Heres some a integer: %d and an floating-point number: %f""" % ("Moon", "Earth", "Moon", "Earth", 1234, 12.34))
print()

##  The format() method
mass_percentage = "1/6"
print("""
    You are lighter on the {0}, because on the {0} 
    you would weigh about {1} of your weight on Earth.
    """.format("Moon", mass_percentage))
print()

# another example with impoved readability
mass_percentage = "1/6"
print("""
    You are lighter on the {moon}, because on the {moon} 
    you would weigh about {mass} of your weight on Earth.
    """.format(moon="Moon", mass=mass_percentage))
print()

##  f-strings
mass_percentage = "1/6"
print(f"On the Moon, you would weigh about {mass_percentage} of your weight on Earth.")
print()

# another f-string example with 
print(round(100/6, 1))
print()
print(f"On the Moon, you would weigh about {round(100/6, 1)} % of your weight on Earth.")
print()

# Using an expression doesn't require a function call. Any of the string methods are valid as well. 
# For example, the string could enforce a specific casing for creating a heading:
subject = "interesting facts about the moon"
print(subject + ". heading without title() method")
heading = f"{subject.title()}"
print(heading + ". heading with title() method")
print()