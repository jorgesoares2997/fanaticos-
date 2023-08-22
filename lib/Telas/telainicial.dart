import 'package:fanatico/Telas/telalogin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cadastro.dart';
import '../Components/button.dart';
import '../Components/texto.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          Background(),
          Center(
            child: TelaPreta(),
          ),
          Positioned(
            top: 150,
            right: 110,
            child: Container(
              child: Image.asset('assets/images/logobola.png'),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 120,
            child: Container(
              child: Image.asset('assets/images/logomed.png'),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 30,
            child: Container(
              child: Image.asset('assets/images/logoam.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
    );
  }
}

class TelaPreta extends StatelessWidget {
  const TelaPreta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 80,
            ),
            Texto(
              texto: 'Bem vindo',
              fonte: 40,
            ),
            Texto(
              texto: 'Entre ou se cadastre na nossa \n festa do esporte',
              fonte: 13,
            ),
            SizedBox(
              height: 20,
            ),
            Button(
              title: 'Entrar',
              fonte: 18,
              route: TelaLogin(),
            ),
            Button(
              title: 'Cadastro',
              fonte: 18,
              route: Cadastro(),
            ),
          ],
        ),
      ),
      height: 400,
      width: 300,
      color: const Color.fromARGB(185, 0, 0, 0),
    );
  }
}
