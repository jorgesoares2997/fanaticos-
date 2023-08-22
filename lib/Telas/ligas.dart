import 'package:fanatico/Telas/telainicial.dart';

import 'Components_forms/button_form.dart';
import 'Components_forms/campo_texto.dart';
import 'package:fanatico/Telas/Components_forms/Texto_form.dart';
import 'package:flutter/material.dart';

class Ligas extends StatelessWidget {
  const Ligas({super.key});

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
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Container(
                  width: 295,
                  child: Texto(
                    texto: 'Ligas',
                    fonte: 30,
                    cor: Color.fromARGB(255, 242, 201, 2),
                    align: TextAlign.left,
                    weight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Texto(
                    texto:
                        'Para começar, você precisa fazer parte de \numa liga. Crie uma ou escolha a sua.',
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
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
            child: Container(
              width: 335,
              child: Texto(
                texto: 'Criar uma liga',
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
                texto: 'Nome da liga',
                fonte: 12,
                width: 280,
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: ClipOval(
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
              ),
            ],
          ),
          CampoTexto(
            texto: 'Campeonato',
            fonte: 12,
            width: 350,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CampoTexto(
                texto: 'Valor por apostador',
                fonte: 12,
                width: 200,
              ),
              CampoTexto(
                texto: 'Código',
                fonte: 12,
                width: 150,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 335,
              child: Texto(
                texto: 'Ou encontre sua liga',
                fonte: 15,
                cor: Colors.black,
                align: TextAlign.left,
                weight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 335,
                  child: Drop(),
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 24),
                child: Button(
                    title: 'Solicitar entrada na liga',
                    fonte: 18,
                    route: TelaInicial()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Flutter code sample for [DropdownButton].
const List<String> list = <String>[
  'Procure por uma liga',
  '',
];

class Drop extends StatefulWidget {
  const Drop({super.key});

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 250,
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry(value: value, label: value);
      }).toList(),
    );
  }
}
