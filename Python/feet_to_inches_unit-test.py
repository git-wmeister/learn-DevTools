from bakery import assert_equal

def feet_to_inches(distance:int) ->int:
    return distance * 12

assert_equal(feet_to_inches(2), 24)
assert_equal(feet_to_inches(.5), 6.0)
assert_equal(feet_to_inches(0), 0)
assert_equal(feet_to_inches(-4), -48)
assert_equal(feet_to_inches(10000), 120000)