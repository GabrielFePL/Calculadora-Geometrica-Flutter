import 'package:flutter/material.dart';
import '../../controllers/trapezoid_controller.dart';
import '../results/trapezoid_result.dart';

class TrapezoidInputPage extends StatelessWidget {
  TrapezoidInputPage({super.key});

  final TrapezoidController trapezoidController = TrapezoidController();
  final TextEditingController largerBaseController = TextEditingController();
  final TextEditingController smallerBaseController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController side1Controller = TextEditingController();
  final TextEditingController side2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados: Trapézio')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: largerBaseController,
              decoration: const InputDecoration(labelText: "Base Maior:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: smallerBaseController,
              decoration: const InputDecoration(labelText: "Base Menor:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: heightController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: side1Controller,
              decoration: const InputDecoration(labelText: "Lado 1:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: side2Controller,
              decoration: const InputDecoration(labelText: "Lado 2:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (largerBaseController.text.isNotEmpty &&
                    smallerBaseController.text.isNotEmpty &&
                    heightController.text.isNotEmpty &&
                    side1Controller.text.isNotEmpty &&
                    side2Controller.text.isNotEmpty) {
                  try {
                    double largerBase = double.parse(largerBaseController.text);
                    double smallerBase = double.parse(
                      smallerBaseController.text,
                    );
                    double height = double.parse(heightController.text);
                    double side1 = double.parse(side1Controller.text);
                    double side2 = double.parse(side2Controller.text);

                    trapezoidController.setDimensions(
                      largerBase,
                      smallerBase,
                      height,
                      side1,
                      side2,
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => TrapezoidResult(trapezoidController),
                      ),
                    );
                  } catch (e) {
                    // Show an alert if the value is not numeric
                    showDialog(
                      context: context,
                      builder:
                          (context) => AlertDialog(
                            title: const Text("Error"),
                            content: const Text(
                              "Please enter valid numeric values.",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("OK"),
                              ),
                            ],
                          ),
                    );
                  }
                } else {
                  // Show an alert if any field is empty
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text("Error"),
                          content: const Text("Please fill in all fields."),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("OK"),
                            ),
                          ],
                        ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
