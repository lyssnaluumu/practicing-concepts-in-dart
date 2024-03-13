class Singleton {
  Singleton._privateConstructor();

  static final Singleton _instance = Singleton._privateConstructor();

  static Singleton get instance => _instance;

  void someMethod() {
    print("This is a method in the singleton class.");
  }
}

void main() {
  Singleton singleton1 = Singleton.instance;
  Singleton singleton2 = Singleton.instance;

  singleton1.someMethod();
  singleton2.someMethod();

  print(singleton1 == singleton2); // true
}
