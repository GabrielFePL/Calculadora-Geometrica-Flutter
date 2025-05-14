class Square {
  double sideLength;

  Square(this.sideLength);

  double calculateArea() {
    return sideLength * sideLength;
  }

  double calculatePerimeter() {
    return sideLength * 4;
  }
}
