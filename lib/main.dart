import 'Telas/cadastro.dart';
import 'package:flutter/material.dart';
import 'Telas/telainicial.dart';
import 'Telas/telalogin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Telas/ligas.dart';

void main() {
  runApp(const TelaInicial());
}

class Fanaticos extends StatelessWidget {
  const Fanaticos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaInicial(),
        '/telalogin': (context) => const TelaLogin(),
        '/cadastro': (context) => const Cadastro(),
        '/ligas': (context) => const Ligas(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
