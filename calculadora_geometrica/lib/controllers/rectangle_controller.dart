import '../models/rectangle.dart';

class RectangleController {
  Rectangle? rectangle;

  double height = 0.0;
  double width = 0.0;

  void setDimensions(double width, double height) {
    this.height = height;
    this.width = width;
    rectangle = Rectangle(width, height);
  }

  double getArea() {
    if (rectangle != null) {
      return rectangle?.calculateArea() ?? 0.0;
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }

  double getPerimeter() {
    if (rectangle != null) {
      return rectangle?.calculatePerimeter() ?? 0.0;
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }
}
