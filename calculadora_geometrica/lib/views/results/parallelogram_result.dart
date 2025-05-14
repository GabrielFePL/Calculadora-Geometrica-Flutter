import 'package:flutter/material.dart';
import '../../controllers/parallelogram_controller.dart';

class ParallelogramResult extends StatelessWidget {
  final ParallelogramController parallelogramController;
  const ParallelogramResult(this.parallelogramController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado: Paralelogramo'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle_outline, color: Colors.green, size: 60),
                const SizedBox(height: 20),
                Text(
                  'Detalhes do Paralelogramo',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                _buildResultRow("Base", "${parallelogramController.base}"),
                Divider(),
                _buildResultRow("Altura", "${parallelogramController.height}"),
                Divider(),
                _buildResultRow("Área", "${parallelogramController.getArea()}"),
                Divider(),
                _buildResultRow(
                  "Perímetro",
                  "${parallelogramController.getPerimeter()}",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 18)),
          Text(value, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
