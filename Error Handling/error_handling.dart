void main() {
  Bmi bmi = Bmi();

  bmi.height = 1.64592;
  bmi.weight = 74;

  bmi.calculate();
}

class Bmi {
  double? weight;
  double? height;

  void calculate() {
    try {
      double? doubleHeight = height! * height!;

      print("Height * Height $doubleHeight");
      print("weight: $weight");

      double? yourBmi = weight! / doubleHeight;

      print("your bmi is: $yourBmi");
    } catch (e) {
      print(e);
    }
  }
}
