class Person {
  String name;
  int age;

  // Default constructor
  Person(this.name, this.age);

  // Named constructor that delegates to the default constructor
  Person.withDefaultAge(String name) : this(name, 18);
}

void main() {
  Person person1 = Person('John', 30);
  print('Name: ${person1.name}, Age: ${person1.age}');

  // Using the named constructor to create a person with a default age
  Person person2 = Person.withDefaultAge('Jane');
  print('Name: ${person2.name}, Age: ${person2.age}');
}
