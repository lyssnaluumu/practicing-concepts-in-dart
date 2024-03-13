// Good: Separate interfaces for different types of vehicles.
abstract class Drivable {
  void drive();
}

abstract class Flyable {
  void fly();
}

class Car implements Drivable {
  @override
  void drive() {
    print('Car driving');
  }
}

class Airplane implements Flyable {
  @override
  void fly() {
    print('Airplane flying');
  }
}
