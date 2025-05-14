class Cube {
  double side;

  Cube(this.side);

  double calculateVolume() {
    return side * side * side;
  }

  double calculateSurfaceArea() {
    return 6 * side * side;
  }
}
