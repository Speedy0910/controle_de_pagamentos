import 'package:build_context/build_context.dart';
import 'package:controle_de_pagamentos/pages/data/constantes.dart';
import 'package:controle_de_pagamentos/themes/temas.dart';
import 'package:controle_de_pagamentos/widgets/my_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../data/getter.dart';

class EscolherTurma extends StatefulWidget {
  const EscolherTurma({super.key});

  @override
  State<EscolherTurma> createState() => _EscolherTurmaState();
}

class _EscolherTurmaState extends State<EscolherTurma> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Temas().corAppBar(),
        leading: const Icon(null),
        title: MyWidgets().textAppBar(texto: 'Escolher a Turma')
      ),
      body: Container(
        color: Temas().corDeFundo(),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              const allTurmas = turmas;
              return Container(
                margin: EdgeInsets.only(top: size.height * .1),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * .1,
                      width: size.width * .5,
                      child: Observer(builder: (_) {
                        return ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                  Temas().corDosBotaos())),
                          onPressed: () {
                            turmaSelecionada.clear();
                            turmaSelecionada.add(allTurmas[index]);
                            switch (turmaSelecionada[0]) {
                              case 'MTI':
                                context.pushNamed('/MaternalI');
                                break;
                              case 'MTII':
                                context.pushNamed('/MaternalII');
                                break;
                              case 'JDI':
                                context.pushNamed('/JardimI');
                                break;
                              case 'JDII':
                                context.pushNamed('/JardimII');
                                break;
                            }
                          },
                          child: Text(
                            allTurmas[index],
                            style: Temas().styleLetras(),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
