# display seconds in minutes and seconds
seconds = 1042
minutes = seconds // 60
remaining_seconds = seconds % 60
print(seconds, "seconds is equal to:")
print(minutes, "minutes and", remaining_seconds, "seconds")
print()

# another example
seconds = 1042
display_minutes = 1042 // 60
display_seconds = 1042 % 60

print(seconds, "seconds is equal to:")
print("minutes: ", display_minutes)
print("seconds: ", display_seconds)
print()