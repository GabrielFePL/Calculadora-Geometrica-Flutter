import 'package:flutter/material.dart';
import '../../controllers/rectangle_controller.dart';
import '../results/rectangle_result.dart';

class RectangleInputPage extends StatelessWidget {
  RectangleInputPage({super.key});

  final RectangleController rectangleController = RectangleController();

  final TextEditingController heightController = TextEditingController();
  final TextEditingController widthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados: Retângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: heightController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: widthController,
              decoration: const InputDecoration(labelText: "Base:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double height = double.parse(heightController.text);
                double width = double.parse(widthController.text);
                rectangleController.setDimensions(width, height);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RectangleResult(rectangleController),
                  ),
                );
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
