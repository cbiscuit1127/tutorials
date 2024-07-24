class Animal:
    def __init__(self, name, species):
        self.name = name
        self.species = species

    def speak(self):
        return f"{self.name} makes a sound."

class Dog(Animal):
    def __init__(self, name, breed):
        super().__init__(name, "Dog")
        self.breed = breed

    def speak(self):
        return f"{self.name} barks."

class Cat(Animal):
    def __init__(self, name, breed):
        super().__init__(name, "Cat")
        self.breed = breed

    def speak(self):
        return f"{self.name} meows."

def main():
    animals = [
        Dog("Rex", "German Shepherd"),
        Cat("Whiskers", "Siamese")
    ]

    for animal in animals:
        print(animal.speak())

if __name__ == "__main__":
    main()
