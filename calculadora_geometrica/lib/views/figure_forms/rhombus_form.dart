import 'package:flutter/material.dart';
import '../../controllers/rhombus_controller.dart';
import '../results/rhombus_result.dart';

class RhombusInputPage extends StatelessWidget {
  RhombusInputPage({super.key});

  final RhombusController rhombusController = RhombusController();
  final TextEditingController sideController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados: Losango')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: sideController,
              decoration: const InputDecoration(labelText: "Lado:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: heightController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (sideController.text.isNotEmpty) {
                  try {
                    double side = double.parse(sideController.text);
                    double? height =
                        heightController.text.isNotEmpty
                            ? double.parse(heightController.text)
                            : null;
                    rhombusController.setDimensions(side, height);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RhombusResult(rhombusController),
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
                  // Show an alert if the "side" field is empty
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text("Error"),
                          content: const Text("Please fill in the side field."),
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
