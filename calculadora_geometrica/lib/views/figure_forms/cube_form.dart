import 'package:flutter/material.dart';
import '../../controllers/cube_controller.dart';
import '../results/cube_result.dart';

class CubeInputPage extends StatelessWidget {
  CubeInputPage({super.key});

  final CubeController cubeController = CubeController();
  final TextEditingController sideController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados: Cubo')),
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
                double side = double.parse(sideController.text);
                cubeController.setSide(side);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CubeResult(cubeController),
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
