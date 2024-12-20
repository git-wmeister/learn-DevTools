fact = "The Moon has no atmosphere."
two_fact = fact + " No sound can be heard on the Moon."
print(two_fact)
print()
# About using quotation marks
moon_radius = "The Moon has a radius of 1,080 miles."
print(moon_radius)
print()
single_quote = 'The "near side" of the Moon always faces the Earth.'
print(single_quote)
print()
double_quote = "We only see about 60% of the Moon's surface from Earth."
print(double_quote)
print()
# When the text has a combination of single and double quotation marks, you can use triple quotation marks to prevent problems with the interpreter:
triple_quote = """We only see about 60% of the Moon's surface, this is known as the "near side"."""
print(triple_quote)
print()

# Multiline strings
multiline = "Facts about the Moon:\n There is no atmosphere.\n There is no sound."
print(multiline)
print()

# You can achieve the same result by using triple quotation marks:
multiline_triplequote = """Facts about the Moon:
There is no atmosphere.
There is no sound."""
print(multiline_triplequote)
print()

# Titles in strings
print("temperature and facts about the moon".title())
print()

# Titles in strings another example
heading = "temperature and facts about the moon"
heading_title = heading.title()
print(heading_title)
print()

# Split string Example 0
temperatures = "Daylight: 260 F Nighttime: -280 F"
print(temperatures)
print("Example 0")
temperatures_list = temperatures.split()
print(temperatures_list)
print()

# Split string Example 1
print("Example 1, with comma")
temperatures = "Daylight: 260 F, Nighttime: -280 F"
print(temperatures)
print("Example 1: split with comma")
temperatures = "Daylight: 260 F, Nighttime: -280 F"
temperatures_list = temperatures.split(',')
print(temperatures_list)
print()

# Split string Example 2
print("Example 1, with newline")
temperatures = "Daylight: 260 F\n Nighttime: -280 F\n Morning: 200 F"
print(temperatures)
print("Example 1: split with newline")
temperatures_list = temperatures.split('\n')
print(temperatures_list)
print()


#temperatures = "Daylight: 260 F\n Nighttime: -280 F"
#temperatures_list = temperatures.split('\n')
#print(temperatures_list)