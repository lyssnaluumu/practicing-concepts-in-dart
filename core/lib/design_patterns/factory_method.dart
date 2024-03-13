abstract class Animal {
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() => print("Bark");
}

class Cat implements Animal {
  @override
  void makeSound() => print("Meow");
}

abstract class AnimalFactory {
  Animal createAnimal();
}

class DogFactory implements AnimalFactory {
  @override
  Dog createAnimal() => Dog();
}

class CatFactory implements AnimalFactory {
  @override
  Cat createAnimal() => Cat();
}

void main() {
  AnimalFactory dogFactory = DogFactory();
  Animal dog = dogFactory.createAnimal();
  dog.makeSound(); // Bark

  AnimalFactory catFactory = CatFactory();
  Animal cat = catFactory.createAnimal();
  cat.makeSound(); // Meow
}
