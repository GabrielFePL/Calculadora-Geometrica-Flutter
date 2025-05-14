import '../models/parallelogram.dart';

class ParallelogramController {
  Parallelogram? parallelogram;
  double base = 0.0;
  double height = 0.0;

  void setDimensions(double base, double height) {
    parallelogram = Parallelogram(base, height);
    this.base = base;
    this.height = height;
  }

  double getArea() {
    if (parallelogram != null) {
      return parallelogram?.calculateArea() ?? 0.0;
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }

  double getPerimeter() {
    if (parallelogram != null) {
      return parallelogram?.calculatePerimeter() ?? 0.0;
    } else {
      throw Exception("Dimenções não definidas.");
    }
  }
}
