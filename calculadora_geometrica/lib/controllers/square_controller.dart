import '../models/square.dart';

class SquareController {
  Square? square;
  double side = 0.0;

  void setSide(double side) {
    square = Square(side);
    this.side = side;
  }

  double getArea() {
    if (square != null) {
      return square?.calculateArea() ?? 0.0;
    } else {
      throw Exception("Lado não definidos.");
    }
  }

  double getPerimeter() {
    if (square != null) {
      return square?.calculatePerimeter() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }
}
