# Single-line Comment
# This line is ignored
a = 0 # The rest of this line is ignored
b = 0
#
# Multi-line Comment
"""
To write multi-line comments in Python, you create a triple-quoted string. 
When Python evaluates this string, the value is unused, so it is safely ignored 
by the computer. However, unlike the single-line comment, that means that the start of 
a multi-line comment must respect indentation rules as shown here. However, 
on the plus side, this triple-quote string counts as the body of the function, 
so you no longer need the pass statement.
"""
def example_function():
    """
    This is a multi-line comment.
    It is ignored by the computer.
    """
    pass
#
"""
Because multi-line comments are just string literal values, they must respect the 
syntax rules of Python, unlike single-line comments. So, you cannot have a multi-line 
string value on a line with any other code; they must be on their own separate line.
"""
#
"""
Many people agree that, at a minimum, you should document all your functions. 
Use a triple-quoted string as the first line in the definition of the function. Then, 
give a quick description of what the function does. To give complete documentation, 
you should also explain what the parameters and returned value mean. Leave a blank line, 
and then type Args:. Indent the next line, and then type the name of the first parameter 
followed by its type in parentheses. On the same line, write a colon and then describe 
the parameter. If you need to continue onto the next line, make sure it is indented past 
the previous line. You should repeat this for all the parameters of your function. 
Finally, write Returns: and then on the next line, write the name of the return type 
followed by a colon and a description of the returned value.
"""
def fix_capitalization(title: str)->str:
    '''
    This function capitalizes the first letter of each
    word in the title, correctly ignoring prepositions.
    
    Args:
        title (str): A book or movie title
            that we want to fix.
    Returns:
        str: The corrected title
    '''
    pass
# Missing Docstrings
"""
Docstrings are a little unusual compared to regular comments because they are considered 
part of the source code. Often, beginners will put docstrings in the wrong location: 
after the function definition, or before. However, a docstring MUST be the first line of 
the body of the function or it will not count. The docstring must also be a string literal 
value; an octothorpe (#) will not count #. Following is an example of a fully documented 
function in the context of a bigger program.
"""
from bakery import assert_equal

def calculate_area(length: int, width: int) -> int:
    '''
    This function calculates the area of a rectangle based on its dimensions. 
    
    Args:
        length (int): The length of the rectangle in feet.
        width (int): The width of the rectangle in feet.
    Returns:
        int: The area in square feet.
    '''
    area = length * width
    return area

assert_equal(calculate_area(5, 6), 30)
assert_equal(calculate_area(0, 6), 0)
assert_equal(calculate_area(4, 5), 20)