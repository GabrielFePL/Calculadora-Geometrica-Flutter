import 'package:flutter/material.dart';
import '../../controllers/square_controller.dart';
import '../results/square_result.dart';

class SquareInputPage extends StatelessWidget {
  SquareInputPage({super.key});

  final SquareController squareController = SquareController();
  final TextEditingController sideController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados: Quadrado')),
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
                    squareController.setSide(side);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SquareResult(squareController),
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
                          content: const Text("The field cannot be empty."),
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
