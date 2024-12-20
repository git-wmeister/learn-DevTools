# When you're converting strings to numbers, you indicate the type of number you want to create. 
# You must decide if you need a decimal point. You use int to convert 
# to an integer, and float to convert to a floating point number.
demo_int = int('215')
print(demo_int)
print(type(demo_int))
print()

demo_float = float('215.3')
print(demo_float)
print(type(demo_float))
print()

# Absolute values
print(type(39 - 16))
print(39 - 16)
print(type(16 - 39))
print(16 - 39)
print()

# Convert the negative value to be its absolute value by using abs. If you perform the same 
# operation by using abs (and print the answers), you notice that it shows 23 for both equations.
print("Using abs() function to print the absolute value of the difference between 39 and 16")
print(type(abs(39 - 16)))
print(abs(39 - 16))
print(type(abs(16 - 39)))
print(abs(16 - 39))

# Rounding
print(round(1.4))
print(round(1.5))
print(round(2.5))
print(round(2.6))
print(round(2.7))

# Rounding with ceil and floor
from math import ceil, floor
print("Rounding up 12.5 with ceil()")
round_up = ceil(12.5)
print(round_up)

print("Rounding down 12.5 with floor()")
round_down = floor(12.5)
print(round_down)