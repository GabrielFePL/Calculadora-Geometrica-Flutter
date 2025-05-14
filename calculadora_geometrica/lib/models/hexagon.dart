import 'dart:math';

class Hexagon {
  double side;

  Hexagon(this.side);

  double calculateArea() {
    return ((3 * sqrt(3)) / 2) * side * side;
  }

  double calculatePerimeter() {
    return (6 * side);
  }
}
