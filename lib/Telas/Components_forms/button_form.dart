import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String title;
  final double fonte;
  final Widget route;

  const Button({
    super.key,
    required this.title,
    required this.fonte,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        ),
        child: Text(
          title,
          style: GoogleFonts.plusJakartaSans(
              textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fonte,
          )),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.all(8.0),
          backgroundColor: Color.fromARGB(255, 242, 201, 2),
        ),
      ),
    );
  }
}
