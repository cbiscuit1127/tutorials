def calculate_circle_area(radius_value):
    import math
    if radius_value < 0:
        raise ValueError('Radius cannot be negative.')
    return math.pi * radius_value * radius_value

