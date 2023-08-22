import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String texto;
  final double fonte;
  final double width;
  const CampoTexto(
      {super.key,
      required this.texto,
      required this.fonte,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            labelText: texto,
            labelStyle: MaterialStateTextStyle.resolveWith(
              (Set<MaterialState> states) {
                final Color color = states.contains(MaterialState.error)
                    ? Theme.of(context).colorScheme.error
                    : Colors.grey;
                return TextStyle(color: color, letterSpacing: 1.3);
              },
            ),
          ),
          style: TextStyle(fontSize: fonte),
        ),
      ),
    );
  }
}
