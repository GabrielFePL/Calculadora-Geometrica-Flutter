import '../models/sphere.dart';

class SphereController {
  Sphere? sphere;
  double? radius;

  void setRadius(double radius) {
    sphere = Sphere(radius);
    this.radius = radius;
  }

  double getVolume() {
    if (sphere != null) {
      return sphere?.calculateVolume() ?? 0.0;
    } else {
      throw Exception("Raio não definido.");
    }
  }

  double getSurfaceArea() {
    if (sphere != null) {
      return sphere?.calculateSurfaceArea() ?? 0.0;
    } else {
      throw Exception("Raio não definido.");
    }
  }
}
