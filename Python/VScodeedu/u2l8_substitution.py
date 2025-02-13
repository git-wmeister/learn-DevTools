def add(left, right):
    return left + right
# 5 + add(3, 4)
# 5 + 7
# 12
print(5 + add(3, 4))

# Question: In what order will the functions be executed?
def y(a:int) ->int:
  return 6+a
def z(a:int) -> int:
  return a*2
def x(a:int) -> int:
  return a-1

print(x(y(z(3))))
print("the order is z(3), y(6), x(12) and the result is 11")