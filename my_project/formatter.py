



def to_usd(my_price):
    """
    Formats number as USD with dollar sign, two decimal places, and thousands separator.

    Examples
    -------------
    print(to_usd(0.44444))
    print(to_usd(3.5))
    print(to_usd(123456789))
    """
    return f"${float(my_price):,.02f}"



if __name__ == "__main__":


    print(to_usd(0.44444))
    print(to_usd(3.5))
    print(to_usd(123456789))
