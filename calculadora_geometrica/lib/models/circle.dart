class Circle {
  double radius;

  Circle(this.radius);

  double calculateArea() {
    return 3.14 * radius * radius;
  }

  double calculateCircumference() {
    return 2 * 3.14 * radius;
  }
}
