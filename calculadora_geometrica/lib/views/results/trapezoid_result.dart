import 'package:flutter/material.dart';
import '../../controllers/trapezoid_controller.dart';

class TrapezoidResult extends StatelessWidget {
  final TrapezoidController trapezoidController;
  const TrapezoidResult(this.trapezoidController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado: Trapézio'),
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
                  'Detalhes do Trapézio',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                _buildResultRow(
                  "Base Maior",
                  "${trapezoidController.largerBase}",
                ),
                Divider(),
                _buildResultRow(
                  "Base Menor",
                  "${trapezoidController.smallerBase}",
                ),
                Divider(),
                _buildResultRow("Altura", "${trapezoidController.height}"),
                Divider(),
                _buildResultRow("Área", "${trapezoidController.getArea()}"),
                Divider(),
                _buildResultRow(
                  "Perímetro",
                  "${trapezoidController.getPerimeter()}",
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
