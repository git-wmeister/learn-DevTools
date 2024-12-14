object_size = 10
proximity = 9000 # proximity (Geman: Nähe) means how close the object is to the sensor
if object_size > 5 and proximity < 1000:
    print('Evasive maneuvers required') # evasive maneuvers (Geman: Ausweichmanöver) means to avoid the object
else:
    print('Object poses no threat')