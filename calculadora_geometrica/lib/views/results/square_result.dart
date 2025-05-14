import 'package:flutter/material.dart';
import '../../controllers/square_controller.dart';

class SquareResult extends StatelessWidget {
  final SquareController squareController;
  const SquareResult(this.squareController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado: Quadrado'),
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
                  'Detalhes do Quadrado',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                _buildResultRow("Lado", "${squareController.side}"),
                Divider(),
                _buildResultRow("Área", "${squareController.getArea()}"),
                Divider(),
                _buildResultRow(
                  "Perímetro",
                  "${squareController.getPerimeter()}",
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
