


class Calculator:
    """
    The Calculator class. Use for basic math.

    This is an example class for testing out auto-documentation capabilities.
    """

    #def __init__(self):
    #    pass

    @classmethod
    def add(cls, a, b):
        """Add two numbers."""
        return float(a) + float(b)

    @classmethod
    def subtract(cls, a, b):
        """Subtract two numbers."""
        return float(a) - float(b)

    @classmethod
    def multiply(cls, a, b) -> float:
        """Multiply two numbers."""
        return float(a) * float(b)

    @classmethod
    def divide(cls, a, b) -> float:
        """Divide two numbers."""
        return float(a) / float(b)



if __name__ == "__main__":


    print(Calculator.add(5,6))
