# precipitation = Niederschlag in DE
precipitation = 0

if precipitation > 0:
    print("It is raining")
else:
    print("It is NOT raining")
print()

# Current hour of day
hour = 7
if hour > 6:
    time = "It is daylight"
# This will cause an error!
# Did not initialize time on both branches
print(time)
print()

# Current hour of day - fixed
print("Current hour of day - fixed")
hour = 5
if hour > 6:
    time = "It is daylight"
else:
    time = "It is night"
print(time)
print()
#