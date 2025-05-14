import 'package:flutter/material.dart';
import '../../controllers/circle_controller.dart';
import '../results/circle_result.dart';

class CircleInputPage extends StatelessWidget {
  CircleInputPage({super.key});

  final CircleController circleController = CircleController();
  final TextEditingController radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados: Círculo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: radiusController,
              decoration: const InputDecoration(labelText: "Raio:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (radiusController.text.isNotEmpty) {
                  try {
                    double radius = double.parse(radiusController.text);
                    circleController.setRadius(radius);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CircleResult(circleController),
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
                              "Please enter a valid numeric value.",
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
                  // Show an alert if the field is empty
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text("Error"),
                          content: const Text(
                            "Please fill in the radius field.",
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
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Calcular"),
            ),
          ],
        ),
      ),
    );
  }
}
