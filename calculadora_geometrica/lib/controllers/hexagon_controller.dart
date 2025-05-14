import '../models/hexagon.dart';

class HexagonController {
  Hexagon? hexagon;

  void setSide(double side) {
    hexagon = Hexagon(side);
  }

  double getArea() {
    if (hexagon != null) {
      return hexagon?.calculateArea() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }

  double getPerimeter() {
    if (hexagon != null) {
      return hexagon?.calculatePerimeter() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }
}
