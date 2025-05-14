import '../models/trapezoid.dart';

class TrapezoidController {
  Trapezoid? trapezoid;
  double largerBase = 0.0;
  double smallerBase = 0.0;
  double height = 0.0;
  double side1 = 0.0;
  double side2 = 0.0;

  void setDimensions(
    double largerBase,
    double smallerBase,
    double height,
    double side1,
    double side2,
  ) {
    trapezoid = Trapezoid(
      largerBase: largerBase,
      smallerBase: smallerBase,
      height: height,
      side1: side1,
      side2: side2,
    );
    this.largerBase = largerBase;
    this.smallerBase = smallerBase;
    this.height = height;
    this.side1 = side1;
    this.side2 = side2;
  }

  double getArea() {
    if (trapezoid != null) {
      return trapezoid?.calculateArea() ?? 0.0;
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }

  double getPerimeter() {
    if (trapezoid != null) {
      return trapezoid?.calculatePerimeter() ?? 0.0;
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }
}
