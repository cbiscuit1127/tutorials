class Person:
    def __init__(self, name, age):
        self.name=name
        self.age=age

    def greet(self):
        print(f'Hello, my name is {self.name} and I am {self.age} years old.')

def calculate_area(radius):
    '''Calculate the area of a circle given its radius.'''
    import math
    if radius < 0:
        raise ValueError('Radius cannot be negative.')
    return math.pi * radius * radius

def calculate_circumference(radius):
    '''Calculate the circumference of a circle given its radius.'''
    import math
    if radius < 0:
        raise ValueError('Radius cannot be negative.')
    return 2 * math.pi * radius

def main():
    '''Main function to demonstrate the functionality.'''
    person = Person('Alice', 30)
    person.greet()

    radius = 5
    area = calculate_area(radius)
    circumference = calculate_circumference(radius)
    print(f'The area of a circle with radius {radius} is {area}.')
    print(f'The circumference of a circle with radius {radius} is {circumference}.')

if __name__ == '__main__':
    main()
