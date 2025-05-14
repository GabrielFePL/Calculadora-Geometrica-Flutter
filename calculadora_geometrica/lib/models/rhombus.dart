class Rhombus {
  double sideLength;
  double? height;

  Rhombus({required this.sideLength, this.height});

  double calculateArea() {
    if (height != null) {
      return sideLength * height!;
    } else {
      throw Exception("Height is not defined.");
    }
  }

  double calculatePerimeter() {
    return 4 * sideLength;
  }
}
