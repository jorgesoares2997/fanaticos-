import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texto extends StatelessWidget {
  final String texto;
  final double fonte;
  final Color cor;
  final TextAlign align;
  final FontWeight weight;

  const Texto(
      {super.key,
      required this.texto,
      required this.fonte,
      required this.cor,
      required this.align,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        texto,
        style: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(
              fontSize: fonte,
              color: cor,
              decoration: TextDecoration.none,
              fontWeight: weight),
        ),
        textAlign: align,
      ),
    );
  }
}
