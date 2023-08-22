import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String texto;
  final double fonte;
  const CampoTexto({super.key, required this.texto, required this.fonte});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(),
            labelText: texto,
          ),
          style: TextStyle(fontSize: fonte),
        ),
      ),
    );
  }
}
