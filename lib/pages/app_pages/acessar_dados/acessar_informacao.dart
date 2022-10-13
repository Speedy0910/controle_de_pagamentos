import 'package:controle_de_pagamentos/pages/data/constantes.dart';
import 'package:controle_de_pagamentos/themes/temas.dart';
import 'package:controle_de_pagamentos/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

import '../../data/getter.dart';

class AcessarInformacao extends StatefulWidget {
  const AcessarInformacao({super.key});

  @override
  State<AcessarInformacao> createState() => _AcessarInformacaoState();
}

class _AcessarInformacaoState extends State<AcessarInformacao> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final dados = informacoes;
    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: Temas().corAppBar(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height:  size.height * .06,),
                  MyWidgets().entrarEmContato(
                    context: context,
                    telefone: '+5591${dados[3]}',
                    msg: 'Construindo Saberes. Olá, tudo bem?'
                  ),
                  SizedBox(height:  size.height * .03,),
                  MyWidgets().confirmPay(context: context),              
                  SizedBox(height:  size.height * .03,),
                  MyWidgets().deleteFile(context: context,),
                ],
              ),
            ),
          )
        ),
        appBar: AppBar(
          title: MyWidgets().textAppBar(texto: 'Informações de ${informacoes[0]}'),
          backgroundColor: Temas().corAppBar(),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          color: Temas().corDeFundo(),
          child: Column(
            children: [
              SizedBox(
                height: size.height * .2,
                width: size.width * .3,
                child: Image.asset('assets/imgs/logo_escola.png'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: dados.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: size.height * .02,
                          ),
                          child: Text(
                            titleInfo[index],
                            style: const TextStyle(
                                fontFamily: 'Coming Soon',
                                color: Colors.brown,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                            height: size.height * .1,
                            decoration: BoxDecoration(
                              color: Temas().corDosBotaos(),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Center(
                                child: Text('${dados[index]}',
                                    style: Temas().styleLetras()))),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
