import '../models/rhombus.dart';

class RhombusController {
  Rhombus? rhombus;
  double side = 0.0;
  double? height;

  void setDimensions(double side, [double? height]) {
    rhombus = Rhombus(sideLength: side, height: height);
    this.side = side;
    this.height = height;
  }

  double getArea() {
    if (rhombus != null) {
      return rhombus!.calculateArea();
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }

  double getPerimeter() {
    if (rhombus != null) {
      return rhombus!.calculatePerimeter();
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }
}
