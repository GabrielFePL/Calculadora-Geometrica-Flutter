import 'package:flutter/material.dart';
import '../../controllers/hexagon_controller.dart';
import '../results/hexagon_result.dart';

class HexagonInputPage extends StatelessWidget {
  HexagonInputPage({super.key});

  final HexagonController hexagonController = HexagonController();
  final TextEditingController sideController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados: Hexágono')),
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
            ElevatedButton(
              onPressed: () {
                if (sideController.text.isNotEmpty) {
                  try {
                    double side = double.parse(sideController.text);
                    hexagonController.setSide(side);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HexagonResult(hexagonController),
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
                          content: const Text("Field cannot be empty!"),
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
