import 'package:flutter/material.dart';
import '../../controllers/parallelogram_controller.dart';
import '../results/parallelogram_result.dart';

class ParallelogramInputPage extends StatelessWidget {
  ParallelogramInputPage({super.key});

  final ParallelogramController parallelogramController =
      ParallelogramController();
  final TextEditingController baseController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados: Paralelogramo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: "Base:"),
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
                if (baseController.text.isNotEmpty &&
                    heightController.text.isNotEmpty) {
                  try {
                    double base = double.parse(baseController.text);
                    double height = double.parse(heightController.text);
                    parallelogramController.setDimensions(base, height);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                ParallelogramResult(parallelogramController),
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
              child: const Text("Calcular"),
            ),
          ],
        ),
      ),
    );
  }
}
