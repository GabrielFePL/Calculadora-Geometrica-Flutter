class Trapezoid {
  double largerBase;
  double smallerBase;
  double height;
  double side1;
  double side2;

  Trapezoid({
    required this.largerBase,
    required this.smallerBase,
    required this.height,
    required this.side1,
    required this.side2,
  });

  double calculateArea() {
    return ((largerBase + smallerBase) * height) / 2;
  }

  double calculatePerimeter() {
    return largerBase + smallerBase + side1 + side2;
  }
}
