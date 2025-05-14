import '../models/circle.dart';

class CircleController {
  Circle? circle;
  double radius = 0.0;

  void setRadius(double radius) {
    circle = Circle(radius);
    this.radius = radius;
  }

  double getArea() {
    if (circle != null) {
      return circle?.calculateArea() ?? 0.0;
    } else {
      throw Exception("Raio não definido.");
    }
  }

  double getPerimeter() {
    if (circle != null) {
      return circle?.calculateCircumference() ?? 0.0;
    } else {
      throw Exception("Raio não definido.");
    }
  }
}
