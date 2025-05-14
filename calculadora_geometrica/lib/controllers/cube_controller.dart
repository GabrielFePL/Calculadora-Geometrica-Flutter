import '../models/cube.dart';

class CubeController {
  Cube? cube;

  void setSide(double side) {
    cube = Cube(side);
  }

  double getVolume() {
    if (cube != null) {
      return cube?.calculateVolume() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }

  double getSurfaceArea() {
    if (cube != null) {
      return cube?.calculateSurfaceArea() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }
}
