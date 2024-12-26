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

# Check content
temperatures = "Mars Average Temperature: -60 C"
parts = temperatures.split(':')
print(parts)
print(parts[-1])

mars_temperature = "The highest temperature on Mars is about 30 C"
for item in mars_temperature.split():
    # isnumeric() method checks if all the in the text are numeric but does not include negative numbers
    if item.isnumeric(): 
        print(item)

# Transform text
print("Saturn has a daytime temperature of -170 degrees Celsius, while Mars has -28 Celsius.".replace("Celsius", "C"))

# As mentioned earlier, .lower() is a good way to normalize text to do 
# a case-insensitive search. Let's quickly check to see whether some text discusses temperatures:

text = "Temperatures on the Moon can vary wildly."
print("temperatures" in text)
# Output: False

text = "Temperatures on the Moon can vary wildly."
print("temperatures" in text.lower())
# Output: True

# join() method
# with moon_facts = ["1", "2", etc.] variable as a list
moon_facts = ["The Moon is drifting away from the Earth.", "On average, the Moon is moving about 4cm every year."]
type(moon_facts) # <class 'list'>, ordered, indexed and changeable with .add() method
print(' '.join(moon_facts))

# with moon_facts = {"1", "2", etc.} variable as a set
moon_facts = {"The Moon is drifting away from the Earth.", "On average, the Moon is moving about 4cm every year."}
type(moon_facts) # <class 'set'>, unordered, unindexed, unique (No Duplicates) and changeable with .append() method
print(' '.join(moon_facts))