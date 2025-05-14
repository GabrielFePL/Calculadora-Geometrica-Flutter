import '../models/triangle.dart';

class TriangleController {
  Triangle? triangle;
  double baseLength = 0.0;
  double height = 0.0;

  void setDimensions(double baseLength, double height) {
    triangle = Triangle(baseLength, height);
    this.height = height;
    this.baseLength = baseLength;
  }

  double getArea() {
    if (triangle != null) {
      return triangle?.calculateArea() ?? 0.0;
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }

  double getPerimeter() {
    if (triangle != null) {
      return triangle?.calculatePerimeter() ?? 0.0;
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }
}
