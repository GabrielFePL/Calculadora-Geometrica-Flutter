import 'dart:math';

class Triangle {
  double baseLength;
  double height;

  Triangle(this.baseLength, this.height);

  double calculateArea() {
    return (baseLength * height) / 2;
  }

  double calculatePerimeter() {
    return baseLength +
        height +
        sqrt(baseLength * baseLength + height * height);
  }
}
