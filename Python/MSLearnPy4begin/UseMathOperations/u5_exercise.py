# Test your application
# To test your project, run the notebook. You'll be prompted in a dialog to provide the distances. You can use the ones from the following table:
# 
print("Planet	Distance from sun")
print("Mercury	57900000")
print("Venus	108200000")
print("Earth	149600000")
print("Mars	227900000")
print("Jupiter	778600000")
print("Saturn	1433500000")
print("Uranus	2872500000")
print("Neptune	4495100000")
print()

first_planet_input = input('Enter the distance from the sun for the first planet in km: ')
second_planet_input = input('Enter the distance from the sun for the second planet in km: ')
print(first_planet_input)
print(type(first_planet_input))
print()
print(second_planet_input)
print(type(second_planet_input))
print()

first_planet = int(first_planet_input)
print("first_planet: ",  type(first_planet))
second_planet = int(second_planet_input)
print("second_planet: ", type(second_planet))
print()

# Calculate the difference between the two planets
# and display the absolute value with abs() function of the difference in distance.
distance_km = second_planet - first_planet
print("The distance between the two planets is:")
print(distance_km)
print("The absolute value of the distance between the two planets is:")
print(abs(distance_km))