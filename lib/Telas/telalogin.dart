import 'package:fanatico/Components/campo_de_texto.dart';
import 'package:fanatico/Telas/ligas.dart';
import 'package:flutter/material.dart';
import '../Components/texto.dart';
import '../Components/button.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Stack(
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
            Container(
                alignment: Alignment.centerLeft,
                child: Texto(
                  texto: 'Email',
                  fonte: 13,
                )),
            CampoTexto(texto: 'Insira seu e-mail', fonte: 10),
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Texto(
                  texto: 'Senha',
                  fonte: 13,
                )),
            CampoTexto(texto: 'Insira sua Senha', fonte: 10),
            SizedBox(
              height: 10,
            ),
            Button(title: 'Entrar', fonte: 18, route: Ligas())
          ],
        ),
      ),
      height: 400,
      width: 300,
      color: const Color.fromARGB(185, 0, 0, 0),
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
