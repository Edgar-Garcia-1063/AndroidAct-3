import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String id;
  final String model;
  final String brand;
  final String size;
  final String color;
  final String price;
  final String availability;

  const Details({
    Key? key,
    required this.id,
    required this.model,
    required this.brand,
    required this.size,
    required this.color,
    required this.price,
    required this.availability,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del Producto"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tenis El Perrón",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange.shade700,
                      ),
                    ),
                    const Divider(height: 20, thickness: 1.5, color: Colors.grey),
                    _buildDetailRow("ID del Producto:", id),
                    _buildDetailRow("Modelo:", model),
                    _buildDetailRow("Marca:", brand),
                    _buildDetailRow("Talla:", size),
                    _buildDetailRow("Color:", color),
                    _buildDetailRow("Precio:", "\$$price"),
                    _buildDetailRow("Disponibilidad:", availability),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Volver",
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 18, color: Colors.black87),
          children: <TextSpan>[
            TextSpan(text: label, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: " ${value.isEmpty ? 'N/A' : value}"),
          ],
        ),
      ),
    );
  }
}
