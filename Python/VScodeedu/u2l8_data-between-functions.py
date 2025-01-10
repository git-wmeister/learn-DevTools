def calculate_grade(raw: int, weight: int) -> float:
    grade = 10 * (weight+raw) ** .5
    return grade

def make_grade_message(grade: float) -> str:
    return "Your grade was:" + str(grade)

raw = 45
weight = 5
grade = calculate_grade(raw, weight)
message = make_grade_message(grade)
print(message)

# Question: What is the output of the code?
name = input("What is your name? ")
def fix_capitalization(name: str) -> str:
  return name.title().strip()
def make_message(name: str):
  return "Hello " + name + ". " + "How are you?"
name = fix_capitalization(name)
print(make_message(name))
# alternativly you can write it like this:
print(make_message(fix_capitalization(name)))