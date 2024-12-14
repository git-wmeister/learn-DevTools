# Search for a string
# The simplest way to discover whether a given word, character,
# or group of characters exists in a string is to use the in operator:
NoMoonStr = "This text will describe facts and challenges with space travel"
print("No Moon in NoMoonStr string")
print(NoMoonStr)
print("Moon" in NoMoonStr)
print()

MoonStr = "This text will describe facts and challenges with the Moon"
print("Moon in MoonStr string")
print(MoonStr)
print("Moon" in MoonStr)
print()

# An approach to finding the position of a specific word in a string is to use the .find() method:
temperatures = """Saturn has a daytime temperature of -170 degrees Celsius, while Mars has -28 Celsius."""
print(temperatures)
print(temperatures.find("Moon"))
print("No Moon to find, so '-1' is returned")
print()

# The .find() method returns a -1 when the word isn't found, or it returns the index (the number representing 
# the place in the string). The following example shows how it would behave if you're searching for the word Mars:
temperatures = """Saturn has a daytime temperature of -170 degrees Celsius, while Mars has -28 Celsius."""
print(temperatures)
print(temperatures.find("Mars"))
print("Mars is found at place/charecter 64")
print()

# Another way to search for content is to use the .count() method, which 
# returns the total number of occurrences of a certain word in a string:
temperatures = \
"""Saturn has a daytime temperature of -170 degrees Celsius, \
while Mars has -28 Celsius. Here the second Mars is mentioned."""
print(temperatures)
print("Count of Mars and than Moons in the string")
print(temperatures.count("Mars"))
print(temperatures.count("Moon"))

# Strings in Python are case-sensitive, which means that Moon and moon are considered different words. 
# To do a case-insensitive comparison, you can convert a string to all lowercase letters by using the .lower() method:
print("The Moon And The Earth")
print(".lower() method")
print("The Moon And The Earth".lower())
print()

# Similar to the .lower() method, strings have an .upper() method that does the opposite, converting every character to uppercase:
print("The Moon And The Earth")
print(".upper() method")
print("The Moon And The Earth".upper())
print()