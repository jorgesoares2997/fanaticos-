import 'Components_forms/button_form.dart';
import 'Components_forms/campo_texto.dart';
import 'package:fanatico/Telas/Components_forms/Texto_form.dart';
import 'package:flutter/material.dart';
import 'ligas.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 29, 29, 29),
          toolbarHeight: 130,
          leadingWidth: 200,
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  width: 260,
                  child: Texto(
                    texto: 'Cadastro',
                    fonte: 30,
                    cor: Color.fromARGB(255, 242, 201, 2),
                    align: TextAlign.left,
                    weight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Texto(
                    texto:
                        'Informe os dados abaixo para realizar \nseu cadastro',
                    fonte: 14,
                    cor: Color.fromARGB(255, 242, 201, 2),
                    align: TextAlign.left,
                    weight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Scroll(),
      ),
    );
  }
}

class Scroll extends StatefulWidget {
  const Scroll({super.key});

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: ClipOval(
                child: SizedBox(
                  height: 140,
                  width: 140,
                  child: Container(
                    color: Color.fromARGB(255, 246, 237, 188),
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 70,
                      color: Color.fromARGB(255, 85, 83, 77),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 335,
              child: Texto(
                texto: 'Sobre você',
                fonte: 15,
                cor: Colors.black,
                align: TextAlign.left,
                weight: FontWeight.bold,
              ),
            ),
          ),
          CampoTexto(
            texto: 'Nome e sobrenome',
            fonte: 12,
            width: 350,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CampoTexto(
                texto: 'Idade',
                fonte: 12,
                width: 175,
              ),
              CampoTexto(
                texto: 'Cidade',
                fonte: 12,
                width: 175,
              ),
            ],
          ),
          CampoTexto(
            texto: 'Celular',
            fonte: 12,
            width: 350,
          ),
          CampoTexto(
            texto: 'Email',
            fonte: 12,
            width: 350,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 335,
              child: Texto(
                texto: 'Sobre seu timão e apostas',
                fonte: 15,
                cor: Colors.black,
                align: TextAlign.left,
                weight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CampoTexto(
                texto: 'Seu time',
                fonte: 12,
                width: 300,
              ),
              ClipOval(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Container(
                    color: Color.fromARGB(255, 246, 237, 188),
                    child: Icon(
                      Icons.create_new_folder_outlined,
                      size: 30,
                      color: Color.fromARGB(255, 85, 83, 77),
                    ),
                  ),
                ),
              ),
            ],
          ),
          CampoTexto(
            texto: 'Chave PIX',
            fonte: 12,
            width: 350,
          ),
          CampoTexto(
            texto: 'Responsável pela conta',
            fonte: 12,
            width: 350,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 24),
            child: Button(
              title: 'Continuar',
              fonte: 18,
              route: Ligas(),
            ),
          ),
        ],
      ),
    );
  }
}
