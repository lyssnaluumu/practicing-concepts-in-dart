abstract class Bird {
  void fly();
}

class Sparrow extends Bird {
  @override
  void fly() {
    print('Sparrow flying');
  }
}

class Ostrich extends Bird {
  @override
  void fly() {
    throw Exception('Ostrich cannot fly');
  }
}

void makeBirdFly(Bird bird) {
  bird.fly();
}

void main() {
  Bird sparrow = Sparrow();
  // Bird ostrich = Ostrich();

  makeBirdFly(sparrow); // Sparrow flying
  // makeBirdFly(ostrich); // Exception: Ostrich cannot fly
}
