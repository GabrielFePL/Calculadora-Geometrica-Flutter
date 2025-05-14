import 'package:flutter/material.dart';
import 'package:calculadora_geometrica/controllers/rectangle_controller.dart';

class RectangleResult extends StatelessWidget {
  final RectangleController rectangleController;
  const RectangleResult(this.rectangleController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado: Retângulo'),
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
                  'Detalhes do Retângulo',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                _buildResultRow("Altura", "${rectangleController.height}"),
                Divider(),
                _buildResultRow("Base", "${rectangleController.width}"),
                Divider(),
                _buildResultRow("Área", "${rectangleController.getArea()}"),
                Divider(),
                _buildResultRow(
                  "Perímetro",
                  "${rectangleController.getPerimeter()}",
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
        children: [
          Expanded(child: Text(label, style: TextStyle(fontSize: 18))),
          Text(
            value,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
