import 'package:fanatico/Components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texto extends StatelessWidget {
  final String texto;
  final double fonte;

  const Texto({
    super.key,
    required this.texto,
    required this.fonte,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        texto,
        style: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(
              fontSize: fonte,
              color: Colors.white,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
