// Bad: This interface forces the implementation of unnecessary methods.
abstract class Vehicle {
  void drive();
  void fly();
}

class Car implements Vehicle {
  @override
  void drive() {
    print('Car driving');
  }

  @override
  void fly() {
    // Not applicable for a car
  }
}
