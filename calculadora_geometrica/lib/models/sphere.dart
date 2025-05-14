class Sphere {
  double radius;

  Sphere(this.radius);

  double calculateVolume() {
    return (4 / 3) * 3.141592653589793 * radius * radius * radius;
  }

  double calculateSurfaceArea() {
    return 4 * 3.141592653589793 * radius * radius;
  }
}
