class Parallelogram {
  double base;
  double height;

  Parallelogram(this.base, this.height);

  double calculateArea() {
    return base * height;
  }

  double calculatePerimeter() {
    return (base + height) * 2;
  }
}
