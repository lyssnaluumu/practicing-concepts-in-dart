abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

void printArea(Shape shape) {
  print('Area: ${shape.area()}');
}

void main() {
  Shape rectangle = Rectangle(5, 10);
  Shape circle = Circle(7);

  printArea(rectangle); // Area: 50
  printArea(circle);    // Area: 153.86
}
