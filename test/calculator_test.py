
from my_project.calculator import Calculator

def test_calculator():

    assert Calculator.add(5,6) == 11.0
    assert Calculator.subtract(5,6) == -1.0
    assert Calculator.multiply(5,6) == 30
    assert Calculator.divide(3,6) == 0.5
